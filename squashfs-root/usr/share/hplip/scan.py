#!/usr/bin/python3
# -*- coding: utf-8 -*-
#
# (c) Copyright 2003-2015 HP Development Company, L.P.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
#
# Author: Don Welch
# Contributors: Sarbeswar Meher
#



__version__ = '2.2'
__mod__ = 'hp-scan'
__title__ = 'Scan Utility'
__doc__ = "SANE-based scan utility for HPLIP supported all-in-one/mfp devices."

# Std Lib
import sys
import os
import os.path
import getopt
import signal
import time
import socket
import operator
import scanext

# Local
from base.g import *
from base.sixext import PY3
from base import tui, device, module, utils, os_utils
from prnt import cups
from scan import sane


username = prop.username
r = res = 300
scan_mode = 'gray'
tlx = None
tly = None
brx = None
bry = None
units = "mm"
output = ''
dest = []
email_from = ''
email_to = []
email_subject = 'hp-scan from %s' % socket.gethostname()
email_note = ''
resize = 100
contrast = 0
set_contrast = False
brightness = 0
set_brightness = False
brightness = 0
page_size = ''
size_desc = ''
page_units = 'mm'
default_res = 300
scanner_compression = 'JPEG'
adf = False
duplex = False
dest_printer = None
dest_devUri = None

PAGE_SIZES = { # in mm
    '5x7' : (127, 178, "5x7 photo", 'in'),
    '4x6' : (102, 152, "4x6 photo", 'in'),
    '3x5' : (76, 127, "3x5 index card", 'in'),
    'a2_env' : (111, 146, "A2 Envelope", 'in'),
    'a3' : (297, 420, "A3", 'mm'),
    "a4" : (210, 297, "A4", 'mm'),
    "a5" : (148, 210, "A5", 'mm'),
    "a6" : (105, 148, "A6", 'mm'),
    "b4" : (257, 364, "B4", 'mm'),
    "b5" : (182, 257, "B5", 'mm'),
    "c6_env" : (114, 162, "C6 Envelope", 'in'),
    "dl_env" : (110, 220, "DL Envelope", 'in'),
    "exec" : (184, 267, "Executive", 'in'),
    "flsa" : (216, 330, "Flsa", 'mm'),
    "higaki" : (100, 148, "Hagaki", 'mm'),
    "japan_env_3" : (120, 235, "Japanese Envelope #3", 'mm'),
    "japan_env_4" : (90, 205, "Japanese Envelope #4", 'mm'),
    "legal" : (215, 356, "Legal", 'in'),
    "letter" : (215, 279, "Letter", 'in'),
    "no_10_env" : (105, 241, "Number 10 Envelope", 'in'),
    "oufufu-hagaki" : (148, 200, "Oufuku-Hagaki", 'mm'),
    "photo" : (102, 152, "Photo", 'in'),
    "super_b" : (330, 483, "Super B", 'in'),
    }


try:
    viewer = ''
    viewer_list = ['kview', 'display', 'gwenview', 'eog', 'kuickshow',]
    for v in viewer_list:
        vv = utils.which(v)
        if vv:
            viewer = os.path.join(vv, v)
            break


    editor = ''
    editor_list = ['kolourpaint', 'gimp', 'krita', 'cinepaint', 'mirage',]
    for e in editor_list:
        ee = utils.which(e)
        if ee:
            editor = os.path.join(ee, e)
            break

    pdf_viewer = ''
    pdf_viewer_list = ['kpdf', 'acroread', 'xpdf', 'evince',]
    for v in pdf_viewer_list:
        vv = utils.which(v)
        if vv:
            pdf_viewer = os.path.join(vv, v)
            break

    mod = module.Module(__mod__, __title__, __version__, __doc__, None,
                        (INTERACTIVE_MODE,))

    mod.setUsage(module.USAGE_FLAG_DEVICE_ARGS,
        extra_options=[utils.USAGE_SPACE,
        ("[OPTIONS] (General)", "", "header", False),
        ("Scan destinations:", "-s<dest_list> or --dest=<dest_list>", "option", False),
        ("", "where <dest_list> is a comma separated list containing one or more of: 'file'", "option", False),
        ("", ", 'viewer', 'editor', 'pdf', or 'print'. Use only commas between values, no spaces.", "option", False),
        ("Scan mode:", "-m<mode> or --mode=<mode>. Where <mode> is 'gray'\*, 'color' or 'lineart'.", "option", False),
        ("Scanning resolution:", "-r<resolution_in_dpi> or --res=<resolution_in_dpi> or --resolution=<resolution_in_dpi>", "option", False),
        ("", "where 300 is default.", "option", False),
        ("Image resize:", "--resize=<scale_in_%> (min=1%, max=400%, default=100%)", "option", False),
        ("Image contrast:", "-c=<contrast> or --contrast=<contrast>", "option", False),
        ("", "The contrast range varies from device to device.", "option", False),
        ("Image brightness:", "-b=<brightness> or --brightness=<brightness>", "option", False),
        ("", "The brightness range varies from device to device.", "option", False),
        ("ADF mode:", "--adf (Note, only PDF output is supported when using the ADF)", "option", False),
        ("", "--duplex or --dup for duplex scanning using ADF.", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] (Scan area)", "", "header", False),
        ("Specify the units for area/box measurements:", "-t<units> or --units=<units>", "option", False),
        ("", "where <units> is 'mm'\*, 'cm', 'in', 'px', or 'pt' ('mm' is default).", "option", False),
        ("Scan area:", "-a<tlx>,<tly>,<brx>,<bry> or --area=<tlx>,<tly>,<brx>,<bry>", "option", False),
        ("", "Coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units for tlx, tly, brx, and bry are specified by -t/--units (default is 'mm').", "option", False),
        ("", "Use only commas between values, no spaces.", "option", False),
        ("Scan box:", "--box=<tlx>,<tly>,<width>,<height>", "option", False),
        ("", "tlx and tly coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units for tlx, tly, width, and height are specified by -t/--units (default is 'mm').", "option", False),
        ("", "Use only commas between values, no spaces.", "option", False),
        ("Top left x of the scan area:", "--tlx=<tlx>", "option", False),
        ("", "Coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units are specified by -t/--units (default is 'mm').", "option", False),
        ("Top left y of the scan area:", "--tly=<tly>", "option", False),
        ("", "Coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units are specified by -t/--units (default is 'mm').", "option", False),
        ("Bottom right x of the scan area:", "--brx=<brx>", "option", False),
        ("", "Coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units are specified by -t/--units (default is 'mm').", "option", False),
        ("Bottom right y   of the scan area:", "--bry=<bry>", "option", False),
        ("", "Coordinates are relative to the upper left corner of the scan area.", "option", False),
        ("", "Units are specified by -t/--units (default is 'mm').", "option", False),
        ("Specify the scan area based on a paper size:", "--size=<paper size name>", "option", False),
        ("", "where <paper size name> is one of: %s" % ', '.join(sorted(list(PAGE_SIZES.keys()))), "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('file' dest)", "", "header", False),
        ("Filename for 'file' destination:", "-o<file> or -f<file> or --file=<file> or --output=<file>", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('pdf' dest)", "", "header", False),
        ("PDF viewer application:", "--pdf=<pdf_viewer>", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('viewer' dest)", "", "header", False),
        ("Image viewer application:", "-v<viewer> or --viewer=<viewer>", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('editor' dest)", "", "header", False),
        ("Image editor application:", "-e<editor> or --editor=<editor>", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('email' dest)", "", "header", False),
        ("From: address for 'email' dest:", "--email-from=<email_from_address> (required for 'email' dest.)", "option", False),
        ("To: address for 'email' dest:", "--email-to=<email__to_address> (required for 'email' dest.)", "option", False),
        ("Email subject for 'email' dest:", '--email-subject="<subject>" or --subject="<subject>"', "option", False),
        ("", 'Use double quotes (") around the subject if it contains space characters.', "option", False),
        ("Note or message for the 'email' dest:", '--email-msg="<msg>" or --email-note="<note>"', "option", False),
        ("", 'Use double quotes (") around the note/message if it contains space characters.', "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] ('printer' dest)", "", "header", False),
        ("Printer queue/printer dest:", "--dp=<printer_name> or --dest-printer=<printer_name>", "option", False),
        ("Printer device-URI dest:", "--dd=<device-uri> or --dest-device=<device-uri>", "option", False),
        utils.USAGE_SPACE,
        ("[OPTIONS] (advanced)", "", "header", False),
        ("Set the scanner compression mode:", "-x<mode> or --compression=<mode>, <mode>='raw', 'none' or 'jpeg' ('jpeg' is default) ('raw' and 'none' are equivalent)", "option", False),],
        see_also_list=[])

    opts, device_uri, printer_name, mode, ui_toolkit, lang = \
        mod.parseStdOpts('s:m:r:c:t:a:b:o:v:f:c:x:e:',
                         ['dest=', 'mode=', 'res=', 'resolution=',
                          'resize=', 'contrast=', 'adf', 'duplex', 'dup', 'unit=',
                          'units=', 'area=', 'box=', 'tlx=',
                          'tly=', 'brx=', 'bry=', 'size=',
                          'file=', 'output=', 'pdf=', 'viewer=',
                          'email-from=', 'from=', 'email-to=',
                          'to=', 'email-msg=', 'msg=',
                          'printer=', 'compression=' , 'raw',
                          'jpeg', 'color', 'lineart', 'colour',
                          'bw', 'gray', 'grayscale', 'grey',
                          'greyscale', 'email-subject=',
                          'subject=', 'to=', 'from=', 'jpg',
                          'grey-scale', 'gray-scale', 'about=',
                          'editor=', 'dp=', 'dest-printer=', 'dd=',
                          'dest-device=', 'brightness=', 
                         ])


    sane.init()
    sane_devices = sane.getDevices()
    devicelist = {}
    for d, mfg, mdl, t in sane_devices:
        try:
            devicelist[d]
        except KeyError:
            devicelist[d] = [mdl]
        else:
            devicelist[d].append(mdl)
    sane.deInit()
    device_uri = mod.getDeviceUri(device_uri, printer_name,
        back_end_filter=['hpaio'], filter={'scan-type': (operator.gt, 0)}, devices=devicelist)

    if not device_uri:
        sys.exit(1)

    for o, a in opts:
        if o in ('-x', '--compression'):
            a = a.strip().lower()

            if a in ('jpeg', 'jpg'):
                scanner_compression = 'JPEG'

            elif a in ('raw', 'none'):
                scanner_compression = 'None'

            else:
                log.error("Invalid compression value. Valid values are 'jpeg', 'raw', and 'none'.")
                log.error("Using default value of 'jpeg'.")
                scanner_compression = 'JPEG'

        elif o == 'raw':
            scanner_compression = 'None'

        elif o == 'jpeg':
            scanner_compression = 'JPEG'

        elif o in ('--color', '--colour'):
            scan_mode = 'color'

        elif o in ('--lineart', '--line-art', '--bw'):
            scan_mode = 'lineart'

        elif o in ('--gray', '--grayscale', '--gray-scale', '--grey', '--greyscale', '--grey-scale'):
            scan_mode = 'gray'

        elif o in ('-m', '--mode'):
            a = a.strip().lower()

            if a in ('color', 'colour'):
                scan_mode = 'color'

            elif a in ('lineart', 'bw', 'b&w'):
                scan_mode = 'lineart'

            elif a in ('gray', 'grayscale', 'grey', 'greyscale'):
                scan_mode = 'gray'

            else:
                log.error("Invalid mode. Using default of 'gray'.")
                log.error("Valid modes are 'color', 'lineart', or 'gray'.")
                scan_mode = 'gray'

        elif o in ('--res', '--resolution', '-r'):
            try:
                r = int(a.strip())
            except ValueError:
                log.error("Invalid value for resolution.")
                res = default_res
            else:
                res = r

        elif o in ('-t', '--units', '--unit'):
            a = a.strip().lower()

            if a in ('in', 'inch', 'inches'):
                units = 'in'

            elif a in ('mm', 'milimeter', 'milimeters', 'millimetre', 'millimetres'):
                units = 'mm'

            elif a in ('cm', 'centimeter', 'centimeters', 'centimetre', 'centimetres'):
                units = 'cm'

            elif a in ('px', 'pixel', 'pixels', 'pel', 'pels'):
                units = 'px'

            elif a in ('pt', 'point', 'points', 'pts'):
                units = 'pt'

            else:
                log.error("Invalid units. Using default of 'mm'.")
                units = 'mm'

        elif o == '--tlx':
            a = a.strip().lower()
            try:
                f = float(a)
            except ValueError:
                log.error("Invalid value for tlx.")
            else:
                tlx = f

        elif o == '--tly':
            a = a.strip().lower()
            try:
                f = float(a)
            except ValueError:
                log.error("Invalid value for tly.")
            else:
                tly = f

        elif o == '--brx':
            a = a.strip().lower()
            try:
                f = float(a)
            except ValueError:
                log.error("Invalid value for brx.")
            else:
                brx = f

        elif o == '--bry':
            a = a.strip().lower()
            try:
                f = float(a)
            except ValueError:
                log.error("Invalid value for bry.")
            else:
                bry = f

        elif o in ('-a', '--area'): # tlx, tly, brx, bry
            a = a.strip().lower()
            try:
                tlx, tly, brx, bry = a.split(',')[:4]
            except ValueError:
                log.error("Invalid scan area. Using defaults.")
            else:
                try:
                    tlx = float(tlx)
                except ValueError:
                    log.error("Invalid value for tlx. Using defaults.")
                    tlx = None

                try:
                    tly = float(tly)
                except ValueError:
                    log.error("Invalid value for tly. Using defaults.")
                    tly = None

                try:
                    brx = float(brx)
                except ValueError:
                    log.error("Invalid value for brx. Using defaults.")
                    brx = None

                try:
                    bry = float(bry)
                except ValueError:
                    log.error("Invalid value for bry. Using defaults.")
                    bry = None

        elif o == '--box': # tlx, tly, w, h
            a = a.strip().lower()
            try:
                tlx, tly, width, height = a.split(',')[:4]
            except ValueError:
                log.error("Invalid scan area. Using defaults.")
            else:
                try:
                    tlx = float(tlx)
                except ValueError:
                    log.error("Invalid value for tlx. Using defaults.")
                    tlx = None

                try:
                    tly = float(tly)
                except ValueError:
                    log.error("Invalid value for tly. Using defaults.")
                    tly = None

                if tlx is not None:
                    try:
                        brx = float(width) + tlx
                    except ValueError:
                        log.error("Invalid value for width. Using defaults.")
                        brx = None
                else:
                    log.error("Cannot calculate brx since tlx is invalid. Using defaults.")
                    brx = None

                if tly is not None:
                    try:
                        bry = float(height) + tly
                    except ValueError:
                        log.error("Invalid value for height. Using defaults.")
                        bry = None
                else:
                    log.error("Cannot calculate bry since tly is invalid. Using defaults.")
                    bry = None

        elif o == '--size':
            size = a.strip().lower()
            if size in PAGE_SIZES:
                brx, bry, size_desc, page_units = PAGE_SIZES[size]
                tlx, tly = 0, 0
                page_size = size
            else:
                log.error("Invalid page size. Valid page sizes are: %s" % ', '.join(list(PAGE_SIZES.keys())))
                log.error("Using defaults.")

        elif o in ('-o', '--output', '-f', '--file'):
            output = os.path.abspath(os.path.normpath(os.path.expanduser(a.strip())))

            try:
                ext = os.path.splitext(output)[1]
            except IndexError:
                log.error("Invalid filename extension.")
                output = ''
                if 'file' in dest:
                    dest.remove('file')
            else:
                if ext.lower() not in ('.jpg', '.png', '.pdf'):
                    log.error("Only JPG (.jpg), PNG (.png) and PDF (.pdf) output files are supported.")
                    output = ''
                    if 'file' in dest:
                        dest.remove('file')
                else:
                    if os.path.exists(output):
                        log.warn("Output file '%s' exists. File will be overwritten." % output)

                    if 'file' not in dest:
                        dest.append('file')

        elif o in ('-s', '--dest', '--destination'):
            a = a.strip().lower().split(',')
            for aa in a:
                aa = aa.strip()
                if aa in ('file', 'viewer', 'editor', 'print', 'email', 'pdf') \
                    and aa not in dest:
                    dest.append(aa)

        elif o in ('--dd', '--dest-device'):
            dest_devUri = a.strip()
            if 'print' not in dest:
                dest.append('print')

        elif o in ('--dp', '--dest-printer'):
            dest_printer = a.strip()
            if 'print' not in dest:
                dest.append('print')

        elif o in ('-v', '--viewer'):
            a = a.strip()
            b = utils.which(a)
            if not b:
                log.error("Viewer application not found.")
            else:
                viewer = os.path.join(b, a)
                if 'viewer' not in dest:
                    dest.append('viewer')

        elif o in ('-e', '--editor'):
            a = a.strip()
            b = utils.which(a)
            if not b:
                log.error("Editor application not found.")
            else:
                editor = os.path.join(b, a)
                if 'editor' not in dest:
                    dest.append('editor')

        elif o == '--pdf':
            a = a.strip()
            b = utils.which(a)
            if not b:
                log.error("PDF viewer application not found.")
            else:
                pdf_viewer = os.path.join(b, a)
                if 'pdf' not in dest:
                    dest.append('pdf')


        elif o in ('--email-to', '--to'):
            email_to = a.split(',')
            if 'email' not in dest:
                dest.append('email')

        elif o in ('--email-from', '--from'):
            email_from = a
            if 'email' not in dest:
                dest.append('email')

        elif o in ('--email-subject', '--subject', '--about'):
            email_subject = a
            if 'email' not in dest:
                dest.append('email')

        elif o in ('--email-note', '--email-msg', '--msg', '--message', '--note', '--notes'):
            email_note = a
            if 'email' not in dest:
                dest.append('email')

        elif o == '--resize':
            a = a.replace("%", "")
            try:
                resize = int(a)
            except ValueError:
                resize = 100
                log.error("Invalid resize value. Using default of 100%.")

        elif o in ('-b', '--brightness'):
            try:
                set_brightness = True
                brightness = int(a.strip())
            except ValueError:
                log.error("Invalid brightness value. Using default of 0.")
                brightness = 0

        elif o in ('-c', '--contrast'):
            try:
                set_contrast = True
                contrast = int(a.strip())
            except ValueError:
                log.error("Invalid contrast value. Using default of 0.")
                contrast = 0

        elif o == '--adf':
            adf = True
            output_type = 'pdf'
        elif o in ('--dup', '--duplex'):
            duplex = True
            adf = True
            output_type = 'pdf'

    if not dest:
        log.warn("No destinations specified. Adding 'file' destination by default.")
        dest.append('file')

    if 'email' in dest and (not email_from or not email_to):
        log.error("Email specified, but email to and/or email from address(es) were not specified.")
        log.error("Disabling 'email' destination.")
        dest.remove("email")

    if page_size:
        units = 'mm'

    if units == 'in':
        if tlx is not None: tlx = tlx * 25.4
        if tly is not None: tly = tly * 25.4
        if brx is not None: brx = brx * 25.4
        if bry is not None: bry = bry * 25.4

    elif units == 'cm':
        if tlx is not None: tlx = tlx * 10.0
        if tly is not None: tly = tly * 10.0
        if brx is not None: brx = brx * 10.0
        if bry is not None: bry = bry * 10.0

    elif units == 'pt':
        if tlx is not None: tlx = tlx * 0.3528
        if tly is not None: tly = tly * 0.3528
        if brx is not None: brx = brx * 0.3528
        if bry is not None: bry = bry * 0.3528

    elif units == 'px':
        log.warn("Units set to pixels. Using resolution of %ddpi for area calculations." % res)
        if tlx is not None: tlx = tlx / res * 25.4
        if tly is not None: tly = tly / res * 25.4
        if brx is not None: brx = brx / res * 25.4
        if bry is not None: bry = bry / res * 25.4

    if tlx is not None and brx is not None and tlx >= brx:
        log.error("Invalid values for tlx (%d) and brx (%d) (tlx>=brx). Using defaults." % (tlx, brx))
        tlx = brx = None

    if tly is not None and bry is not None and tly >= bry:
        log.error("Invalid values for tly (%d) and bry (%d) (tly>=bry). Using defaults." % (tly, bry))
        tly = bry = None

    if not prop.scan_build:
        log.error("Scanning disabled in build. Exiting")
        sys.exit(1)

    if mode == GUI_MODE:
        log.error("GUI mode is not implemented yet. Refer to 'hp-scan -h' for help.")
        sys.exit(1)


    else: # INTERACTIVE_MODE
        from base.sixext.moves import queue

        try:
            import subprocess
        except ImportError:
            # Pre-2.4 Python
            from base import subproc as subprocess

        try:
            from PIL import Image
        except ImportError:
            log.error("%s requires the Python Imaging Library (PIL). Exiting." % __mod__)
            if PY3:          # Workaround due to incomplete Python3 support in Linux distros.
                log.notice(log.bold("Manually install the PIL package. More information is available at http://hplipopensource.com/node/369"))
            sys.exit(1)

        sane.init()
        devices = sane.getDevices()

        # Make sure SANE backend sees the device...
        for d, mfg, mdl, t in devices:
            if d == device_uri:
                break
        else:
            log.error("Unable to locate device %s using SANE backend hpaio:. Please check HPLIP installation." % device_uri)
            sys.exit(1)

        log.info(log.bold("Using device %s" % device_uri))
        log.info("Opening connection to device...")

        try:
            device = sane.openDevice(device_uri)
        except scanext.error as e:
            sane.reportError(e.args[0])
            sys.exit(1)

        try:
            source_option = device.getOptionObj("source").constraint
            log.debug("Supported source Options: %s size=%d" % (source_option,len(source_option)))
            if source_option is None:
                log.error("Device doesn't have scanner.")
                sys.exit(1)
        except:
            log.error("Failed to get the source from device.")

        #check if device has only ADF
        if len(source_option) == 1 and 'ADF' in source_option:
             log.debug("Device has only ADF support")
             adf = True

        if adf:
            try:
                if 'ADF' not in source_option:
                    log.error("Failed to set ADF mode. This device doesn't support ADF.")
                    sys.exit(1)
                else:
                    if duplex == True:
                        if 'Duplex' in source_option:
                            device.setOption("source", "Duplex")
                        else:
                            log.warn("Device doesn't support Duplex scanning. Continuing with Simplex ADF scan.")
                            device.setOption("source", "ADF")
                    else:
                        device.setOption("source", "ADF")
                    device.setOption("batch-scan", True)
            except scanext.error:
                log.error("Error in setting ADF mode Duplex=%d." % duplex)
                sys.exit(1)

        else:
            try:
                device.setOption("source", "Flatbed")
                device.setOption("batch-scan", False)
            except scanext.error:
                log.debug("Error setting source or batch-scan option (this is probably OK).")


        tlx = device.getOptionObj('tl-x').limitAndSet(tlx)
        tly = device.getOptionObj('tl-y').limitAndSet(tly)
        brx = device.getOptionObj('br-x').limitAndSet(brx)
        bry = device.getOptionObj('br-y').limitAndSet(bry)

        scan_area = (brx - tlx) * (bry - tly) # mm^2

        valid_res = device.getOptionObj('resolution').constraint
        log.debug("Device supported resolutions %s" % (valid_res,))
        if 0 in valid_res: #min-max range in tuple
           if res < valid_res[0] or res > valid_res[1]:
             log.warn("Invalid resolution. Using closest valid resolution of %d dpi" % res)
           if res < valid_res[0]:
              res = valid_res[0]
           elif res > valid_res[1]:
              res = valid_res[1]

        else:
          if res not in valid_res:
            log.warn("Invalid resolution. Using closest valid resolution of %d dpi" % res)
            log.warn("Valid resolutions are %s dpi." % ', '.join([str(x) for x in valid_res]))
            res = valid_res[0]
            min_dist = sys.maxsize
            for x in valid_res:
                  if abs(r-x) < min_dist:
                        min_dist = abs(r-x)
                        res = x

        res = device.getOptionObj('resolution').limitAndSet(res)
        scan_px = scan_area * res * res / 645.16 # res is in DPI

        if scan_mode == 'color':
            scan_size = scan_px * 3 # 3 bytes/px
        elif scan_mode == 'gray':
            scan_size = scan_px # 1 byte/px
        else: # lineart
            scan_size = scan_px // 8 

        if scan_size > 52428800: # 50MB
            if res > 600:
                log.warn("Using resolutions greater than 600 dpi will cause very large files to be created.")
            else:
                log.warn("The scan current parameters will cause very large files to be created.")

            log.warn("This can cause the scan to take a long time to complete and may cause your system to slow down.")
            log.warn("Approx. number of bytes to read from scanner: %s" % utils.format_bytes(scan_size, True))

        device.setOption('compression', scanner_compression)

        if set_contrast:
            valid_contrast = device.getOptionObj('contrast').constraint
            if contrast >= int(valid_contrast[0]) and contrast <= int(valid_contrast[1]):
                contrast = device.getOptionObj('contrast').limitAndSet(contrast)
            else:
                log.warn("Invalid contrast. Contrast range is (%d, %d). Using closest valid contrast of %d " % (int(valid_contrast[0]), int(valid_contrast[1]), contrast))
                if contrast < int(valid_contrast[0]):
                    contrast = int(valid_contrast[0])
                elif contrast > int(valid_contrast[1]):
                    contrast = int(valid_contrast[1])


            device.setOption('contrast', contrast)

        if set_brightness:
            valid_brightness = device.getOptionObj('brightness').constraint
            if brightness >= int(valid_brightness[0]) and brightness <= int(valid_brightness[1]):
                brightness = device.getOptionObj('brightness').limitAndSet(brightness)
            else:
                log.warn("Invalid brightness. Brightness range is (%d, %d). Using closest valid brightness of %d " % (int(valid_brightness[0]), int(valid_brightness[1]), brightness))
                if brightness < int(valid_brightness[0]):
                    brightness = int(valid_brightness[0])
                elif brightness > int(valid_brightness[1]):
                    brightness = int(valid_brightness[1])
            device.setOption('brightness', brightness)

        if brx - tlx <= 0.0 or bry - tly <= 0.0:
            log.error("Invalid scan area (width or height is negative).")
            sys.exit(1)

        log.info("")
        log.info("Resolution: %ddpi" % res)
        log.info("Mode: %s" % scan_mode)
        log.info("Compression: %s" % scanner_compression)
        if(set_contrast):
            log.info("Contrast: %d" % contrast)
        if(set_brightness):
            log.info("Brightness: %d" % brightness)
        if units == 'mm':
            log.info("Scan area (mm):")
            log.info("  Top left (x,y): (%fmm, %fmm)" % (tlx, tly))
            log.info("  Bottom right (x,y): (%fmm, %fmm)" % (brx, bry))
            log.info("  Width: %fmm" % (brx - tlx))
            log.info("  Height: %fmm" % (bry - tly))

        if page_size:
            units = page_units # for display purposes only
            log.info("Page size: %s" % size_desc)
            if units != 'mm':
                log.note("This scan area below in '%s' units may not be exact due to rounding errors." % units)

        if units == 'in':
            log.info("Scan area (in):")
            log.info("  Top left (x,y): (%fin, %fin)" % (tlx/25.4, tly/25.4))
            log.info("  Bottom right (x,y): (%fin, %fin)" % (brx/25.4, bry/25.4))
            log.info("  Width: %fin" % ((brx - tlx)/25.4))
            log.info("  Height: %fin" % ((bry - tly)/25.4))

        elif units == 'cm':
            log.info("Scan area (cm):")
            log.info("  Top left (x,y): (%fcm, %fcm)" % (tlx/10.0, tly/10.0))
            log.info("  Bottom right (x,y): (%fcm, %fcm)" % (brx/10.0, bry/10.0))
            log.info("  Width: %fcm" % ((brx - tlx)/10.0))
            log.info("  Height: %fcm" % ((bry - tly)/10.0))

        elif units == 'px':
            log.info("Scan area (px @ %ddpi):" % res)
            log.info("  Top left (x,y): (%fpx, %fpx)" % (tlx*res/25.4, tly*res/25.4))
            log.info("  Bottom right (x,y): (%fpx, %fpx)" % (brx*res/25.4, bry*res/25.4))
            log.info("  Width: %fpx" % ((brx - tlx)*res/25.4))
            log.info("  Height: %fpx" % ((bry - tly)*res/25.4))

        elif units == 'pt':
            log.info("Scan area (pt):")
            log.info("  Top left (x,y): (%fpt, %fpt)" % (tlx/0.3528, tly/0.3528))
            log.info("  Bottom right (x,y): (%fpt, %fpt)" % (brx/0.3528, bry/0.3528))
            log.info("  Width: %fpt" % ((brx - tlx)/0.3528))
            log.info("  Height: %fpt" % ((bry - tly)/0.3528))

        log.info("Destination(s): %s" % ', '.join(dest))

        if 'file' in dest:
            log.info("Output file: %s" % output)

        update_queue = queue.Queue()
        event_queue = queue.Queue()

        available_scan_mode = device.getOptionObj("mode").constraint
        available_scan_mode = [x.lower() for x in available_scan_mode]
        log.debug("Supported modes: %s size=%d" % (available_scan_mode,len(available_scan_mode)))
        if scan_mode.lower() not in available_scan_mode:
            log.warn("Device doesn't support %s mode. Continuing with %s mode."%(scan_mode,available_scan_mode[0]))
            scan_mode = available_scan_mode[0]

        device.setOption("mode", scan_mode)


        #For some devices, resolution is changed when we set 'source'.
        #Hence we need to set resolution here, after setting the 'source'
        device.setOption("resolution", res)

        if 'file' in dest and not output:
            log.warn("File destination enabled with no output file specified.")

            if adf:
               log.info("Setting output format to PDF for ADF mode.")
               output = utils.createSequencedFilename("hpscan", ".pdf")
               output_type = 'pdf'
            else:
               if scan_mode == 'gray':
                  log.info("Setting output format to PNG for greyscale mode.")
                  output = utils.createSequencedFilename("hpscan", ".png")
                  output_type = 'png'
               else:
                  log.info("Setting output format to JPEG for color/lineart mode.")
                  output = utils.createSequencedFilename("hpscan", ".jpg")
                  output_type = 'jpeg'

            log.warn("Defaulting to '%s'." % output)

        else:
            try:
               output_type = os.path.splitext(output)[1].lower()[1:]
               if output_type == 'jpg':
                  output_type = 'jpeg'
            except IndexError:
               output_type = ''

        if output_type and output_type not in ('jpeg', 'png', 'pdf'):
            log.error("Invalid output file format. File formats must be 'jpeg', 'png', or 'pdf'.")
            sys.exit(1)

        if adf and output_type and output_type != 'pdf':
            log.error("ADF scans must be saved in PDF file format.")
            sys.exit(1)

        log.info("\nWarming up...")

        no_docs = False
        page = 1
        adf_page_files = []
        #adf_pages = []

        cleanup_spinner()
        log.info("")

        try:
            while True:
                if adf:
                    log.info("\nPage %d: Scanning..." % page)
                else:
                    log.info("\nScanning...")

                bytes_read = 0

                try:
                    try:
                        ok, expected_bytes, status = device.startScan("RGBA", update_queue, event_queue)
                        # Note: On some scanners (Marvell) expected_bytes will be < 0 (if lines == -1)
                        log.debug("expected_bytes = %d" % expected_bytes)
                    except scanext.error as e:
                        sane.reportError(e.args[0])
                        sys.exit(1)
                    except KeyboardInterrupt:
                        log.error("Aborted.")
                        device.cancelScan()
                        sys.exit(1)

                    if adf and status == scanext.SANE_STATUS_NO_DOCS:
                        if page-1 == 0:
                            log.error("No document(s). Please load documents and try again.")
                            sys.exit(0)
                        else:
                            log.info("Out of documents. Scanned %d pages total." % (page-1))
                            no_docs = True
                            break

                    if expected_bytes > 0:
                        if adf:
                            log.debug("Expecting to read %s from scanner (per page)." % utils.format_bytes(expected_bytes))
                        else:
                            log.debug("Expecting to read %s from scanner." % utils.format_bytes(expected_bytes))

                    device.waitForScanActive()

                    pm = tui.ProgressMeter("Reading data:")

                    while device.isScanActive():
                        while update_queue.qsize():
                            try:
                                status, bytes_read = update_queue.get(0)

                                if not log.is_debug():
                                    if expected_bytes > 0:
                                        pm.update(int(100*bytes_read/expected_bytes),
                                            utils.format_bytes(bytes_read))
                                    else:
                                        pm.update(0,
                                            utils.format_bytes(bytes_read))

                                if status != scanext.SANE_STATUS_GOOD:
                                    log.error("Error in reading data. Status=%d bytes_read=%d." % (status, bytes_read))
                                    sys.exit(1)

                            except queue.Empty:
                                break


                        time.sleep(0.5)

                except KeyboardInterrupt:
                    log.error("Aborted.")
                    device.cancelScan()
                    sys.exit(1)

                # Make sure queue is cleared out...
                while update_queue.qsize():
                    status, bytes_read = update_queue.get(0)

                    if not log.is_debug():
                        if expected_bytes > 0:
                            pm.update(int(100*bytes_read/expected_bytes),
                                utils.format_bytes(bytes_read))
                        else:
                            pm.update(0,
                                utils.format_bytes(bytes_read))

                # For Marvell devices, making scan progress bar to 100%
                if bytes_read and bytes_read != expected_bytes:
                     pm.update(int(100),utils.format_bytes(bytes_read))
                log.info("")

                if bytes_read:
                    log.info("Read %s from scanner." % utils.format_bytes(bytes_read))

                    buffer, format, format_name, pixels_per_line, \
                        lines, depth, bytes_per_line, pad_bytes, total_read, total_write = device.getScan()

                    log.debug("PPL=%d lines=%d depth=%d BPL=%d pad=%d total_read=%d total_write=%d" %
                        (pixels_per_line, lines, depth, bytes_per_line, pad_bytes, total_read, total_write))

                    #For Marvell devices, expected bytes is not same as total_read
                    if lines == -1 or total_read != expected_bytes:
                        lines = int(total_read / bytes_per_line)

                    if scan_mode in ('color', 'gray'):
                        try:
                            im = Image.frombuffer('RGBA', (pixels_per_line, lines), buffer.read(),
                                'raw', 'RGBA', 0, 1)
                        except ValueError:
                            log.error("Did not read enough data from scanner (I/O Error?)")
                            sys.exit(1)
                    elif scan_mode == 'lineart':
                        try:
                            pixels_per_line = bytes_per_line * 8          # Calculation of pixels_per_line for Lineart must be 8 time of bytes_per_line
                                                                          # Otherwise, scanned image will be corrupted (slanted)
                            im = Image.frombuffer('RGBA', (pixels_per_line, lines), buffer.read(),
                                'raw', 'RGBA', 0, 1).convert('L')
                        except ValueError:
                            log.error("Did not read enough data from scanner (I/O Error?)")
                            sys.exit(1)

                    if adf or output_type == 'pdf':
                        temp_output = utils.createSequencedFilename("hpscan_pg%d_" % page, ".png")
                        adf_page_files.append(temp_output)
                        im.save(temp_output)
                        #log.debug("Saved page %d to file %s" % (page, temp_output))
                else:
                    log.error("No data read.")
                    sys.exit(1)

                if not adf or (adf and no_docs):
                    break

                page += 1

        finally:
            log.info("Closing device.")
            device.cancelScan()

        if adf or output_type == 'pdf':
            try:
                from reportlab.pdfgen import canvas
            except ImportError:
                log.error("PDF output requires ReportLab.")
                sys.exit(1)

            if not output:
                output = utils.createSequencedFilename("hpscan", ".pdf")

            c = canvas.Canvas(output, (brx/0.3528, bry/0.3528))

            for p in adf_page_files:
                #log.info("Processing page %s..." % p)
                image = Image.open(p)

                try:
                    c.drawInlineImage(image, (tlx/0.3528), (tly/0.3528), ((brx-tlx)/0.3528),((bry-tly)/0.3528))
                except NameError:
                    log.error("A problem has occurred with PDF generation. This is a known bug in ReportLab. Please update your install of ReportLab to version 2.0 or greater.")
                    sys.exit(1)
                except AssertionError as e:
                    log.error(e)
                    if PY3:
                        log.note("You might be running an older version of reportlab. Please update to the latest version")
                        log.note("More information is available at http://hplipopensource.com/node/369")
                        sys.exit(1)
                except Exception as e:
                    log.error(e)
                    log.note("Try Updating to reportlab version >= 3.2")
                    sys.exit(1)

                c.showPage()
                os.unlink(p)

            log.info("Saving to file %s" % output)
            c.save()
            log.info("Viewing PDF file in %s" % pdf_viewer)
            cmd = "%s %s &" % (pdf_viewer, output)
            os_utils.execute(cmd)
            sys.exit(0)

        if resize != 100:
            if resize < 1 or resize > 400:
                log.error("Resize parameter is incorrect. Resize must be 0% < resize < 400%.")
                log.error("Using resize value of 100%.")
            else:
                new_w = int(pixels_per_line * resize / 100)
                new_h = int(lines * resize / 100)
                log.info("Resizing image from %dx%d to %dx%d..." % (pixels_per_line, lines, new_w, new_h))
                im = im.resize((new_w, new_h), Image.ANTIALIAS)

        file_saved = False
        if 'file' in dest:
            log.info("\nOutputting to destination 'file':")
            log.info("Saving to file %s" % output)

            try:
                im.save(output)
            except IOError as e:
                log.error("Error saving file: %s (I/O)" % e)
                try:
                    os.remove(output)
                except OSError:
                    pass
                sys.exit(1)
            except ValueError as e:
                log.error("Error saving file: %s (PIL)" % e)
                try:
                    os.remove(output)
                except OSError:
                    pass
                sys.exit(1)

            file_saved = True
            dest.remove("file")

        temp_saved = False
        if ('editor' in dest or 'viewer' in dest or 'email' in dest or 'print' in dest) \
            and not file_saved:

            output_fd, output = utils.make_temp_file(suffix='.png')
            try:
                im.save(output)
            except IOError as e:
                log.error("Error saving temporary file: %s" % e)

                try:
                    os.remove(output)
                except OSError:
                    pass

                sys.exit(1)

            os.close(output_fd)
            temp_saved = True

        for d in dest:
            log.info("\nSending to destination '%s':" % d)

            if d == 'pdf':
                try:
                    from reportlab.pdfgen import canvas
                except ImportError:
                    log.error("PDF output requires ReportLab.")
                    continue

                pdf_output = utils.createSequencedFilename("hpscan", ".pdf")
                c = canvas.Canvas(pdf_output, (brx/0.3528, bry/0.3528))

                try:
                    c.drawInlineImage(im, (tlx/0.3528), (tly/0.3528), ((brx-tlx)/0.3528),((bry-tly)/0.3528))
                except NameError:
                    log.error("A problem has occurred with PDF generation. This is a known bug in ReportLab. Please update your install of ReportLab to version 2.0 or greater.")
                    continue

                c.showPage()
                log.info("Saving to file %s" % pdf_output)
                c.save()
                log.info("Viewing PDF file in %s" % pdf_viewer)
                cmd = "%s %s &" % (pdf_viewer, pdf_output)
                os_utils.execute(cmd)
                sys.exit(0)

            elif d == 'print':
                hp_print = utils.which("hp-print", True)
                if not hp_print:
                    hp_print = 'python ./print.py'
                 
                if dest_printer is not None:
                   cmd = '%s -p %s %s &' % (hp_print, dest_printer, output)
                elif dest_devUri is not None:
                   tmp = dest_devUri.partition(":")[2]
                   dest_devUri = "hp:" + tmp
                   cmd = '%s -d %s %s &' % (hp_print, dest_devUri, output)
                else:
                   cmd = '%s %s &' % (hp_print, output)
                
                os_utils.execute(cmd)

            elif d == 'email':
                try:
                    from email.mime.image import MIMEImage
                    from email.mime.multipart import MIMEMultipart
                    from email.mime.text import MIMEText
                except ImportError:
                    try:
                        from email.MIMEImage import MIMEImage
                        from email.MIMEMultipart import MIMEMultipart
                        from email.MIMEText import MIMEText
                    except ImportError:
                        log.error("hp-scan email destination requires Python 2.2+.")
                        continue

                msg = MIMEMultipart()
                msg['Subject'] = email_subject
                msg['From'] = email_from
                msg['To'] = ','.join(email_to)
                msg.preamble = 'Scanned using hp-scan'

                if email_note:
                    txt = MIMEText(email_note)
                    msg.attach(txt)

                if file_saved:
                    txt = MIMEText("attached: %s: %dx%d %s PNG image." %
                        (os.path.basename(output), pixels_per_line, lines, scan_mode))
                else:
                    txt = MIMEText("attached: %dx%d %s PNG image." % (pixels_per_line, lines, scan_mode))

                msg.attach(txt)

                fp = open(output, 'r')
                img = MIMEImage(fp.read())
                fp.close()

                if file_saved:
                    img.add_header('Content-Disposition', 'attachment', filename=os.path.basename(output))

                msg.attach(img)

                sendmail = utils.which("sendmail")

                if sendmail:
                    sendmail = os.path.join(sendmail, 'sendmail')
                    cmd = [sendmail,'-t','-r',email_from]

                    log.debug(repr(cmd))
                    err = None
                    try:
                        sp = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                        std_out, std_err = sp.communicate(msg.as_string())
                        if std_err != '':
                            err = std_err
                    except OSError as e:
                        err = str(e)
                    cleanup_spinner()

                    if err:
                        log.error(repr(err))

                else:
                    log.error("Mail send failed. 'sendmail' not found.")

            elif d == 'viewer':
                if viewer:
                    log.info("Viewing file in %s" % viewer)
                    cmd = "%s %s &" % (viewer, output)
                    os_utils.execute(cmd)
                else:
                    log.error("Viewer not found.")

            elif d == 'editor':
                if editor:
                    log.info("Editing file in %s" % editor)
                    cmd = "%s %s &" % (editor, output)
                    os_utils.execute(cmd)
                else:
                    log.error("Editor not found.")

        device.freeScan()
        device.closeScan()
        sane.deInit()


except KeyboardInterrupt:
    log.error("User exit")

log.info("")
log.info("Done.")

