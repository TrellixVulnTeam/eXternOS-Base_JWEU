# config.py - A simple dialog based tool for basic configuration of
#             Speech Dispatcher and problem diagnostics.
#
# Copyright (C) 2008, 2010 Brailcom, o.p.s.
#               2016 Sebastian Humenda
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
# Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

import argparse
import datetime
import fileinput
import gettext
import locale
import os
import shutil
import shlex
import socket
import sys
import time

from xdg import BaseDirectory

# Locale/gettext configuration

locale.setlocale(locale.LC_ALL, '')
gettext.bindtextdomain ("speech-dispatcher", "/usr/share/locale")
gettext.textdomain("speech-dispatcher")
_ = gettext.gettext

# Configuration and sound data paths
from . import paths

# two globals
use_espeak_synthesis = False
dont_ask = False

def report(msg):
    """Output information messages for the user on stdout
    and if desired, by espeak synthesis"""
    print(msg)
    if use_espeak_synthesis:
        os.system("espeak %s" % shlex.quote(msg))

def input_audio_icon():
    """Produce a sound for the event 'input requested' used in question()"""
    if use_espeak_synthesis:
        os.system("espeak \"Type in\"")

def question(text, default):
    """Ask a simple question and suggest the default value"""

    while 1:
        if isinstance(default, bool):
            if default:
                default_str = "yes"
            else:
                default_str = "no"
        else:
            default_str = str(default)
        report(text + " ["+default_str+"] :")
        input_audio_icon()

        if not dont_ask:
            str_inp = input(">")

        # On plain enter, return default
        if dont_ask or (len(str_inp) == 0):
            return default
        # If a value was typed, check it and convert it
        elif isinstance(default, bool):
            if str_inp in ["yes","y", "Y", "true","t", "1"]:
                return True
            elif str_inp in ["no", "n", "N", "false", "f", "0"]:
                return False
            else:
                report ("Unknown answer (type 'yes' or 'no')")
                continue
        elif isinstance(default, int):
            return int(str_inp)
        elif isinstance(default, str):
            return str_inp
        else:
            raise TypeError("Invalid type for the default value")

def question_with_suggested_answers(text, default, suggest):
    """Ask a question with suggested answers. If the answer typed is not
    in 'suggest', the user is notified and given an opportunity to correct
    his choice"""

    reply = question(text, default)
    while reply not in suggest:
        report(_("""The value you have chosen is not among the suggested values.
You have chosen '%s'.""" % reply))
        report(_("The suggested values are " + str(suggest)))
        correct = question(_("Do you want to correct your answer?"), True)
        if correct:
            reply = question(text, default)
        else:
            return reply
    return reply

def question_with_required_answers(text, default, required):
    """Ask a question and repeat it until the answer typed in is in 'required'"""

    reply = question(text, default)
    while reply not in required:
        report(_("You have chosen '%s'. Please choose one of %s" % (reply, str(required))))
        reply = question(text, default)
    return reply

def setup_argparse():
    """Set up an argparser instance with all the options accepted."""
    parser = argparse.ArgumentParser()
    parser.add_argument('-u', '--create-user-conf',
        dest='create_user_configuration', action="store_true", default=False,
        help=_("Create Speech Dispatcher configuration for the given user"))
    parser.add_argument('-c', '--config-basic-settings-user',
        dest='config_basic_settings_user', action="store_true", default=False,
        help=_("Configure basic settings in user configuration"))
    parser.add_argument('-C', '--config-basic-settings-system',
        dest='config_basic_settings_system', action="store_true", default=False,
        help=_("Configure basic settings in system-wide configuration"))
    parser.add_argument('-d', '--diagnostics', dest='diagnostics',
        action="store_true", default=False,
        help=_("Diagnose problems with the current setup"))
    parser.add_argument('-s', '--test-spd-say', dest='test_spd_say',
        action="store_true", default=False,
        help=_("Test connection to Speech Dispatcher using spd-say"))
    parser.add_argument('--test-festival', dest='test_festival',
        action="store_true", default=False,
        help=_("Test whether Festival works as a server"))
    parser.add_argument('--test-espeak', dest='test_espeak', action="store_true",
        default=False, help=_("Test whether Espeak works as a standalone binary"))
    parser.add_argument('--test-alsa', dest='test_alsa', action="store_true",
        default=False, help=_("Test ALSA audio output"))
    parser.add_argument('--test-pulse', dest='test_pulse', action="store_true",
            default=False, help=_("Test Pulse Audio output"))
    parser.add_argument('-e', '--espeak', dest='use_espeak_synthesis',
            action="store_true", default=use_espeak_synthesis,
            help=_("Use espeak to synthesize messages"))
    parser.add_argument('-n', '--dont-ask', dest='dont_ask',
            action="store_true", default=False,
            help=_("Do not ask any questions, always use default values"))
    parser.add_argument('-D', '--debug', dest='debug',
            action="store_true", default=False,
            help=_("Debug a problem and generate a report"))
    return parser

class Tests:
    """Tests of functionality of Speech Dispatcher and its dependencies
    and methods for determination of proper paths"""

    def __init__(self):
        self.festival_socket = None

    def user_conf_dir(self):
        """Return user configuration directory"""
        return os.path.join(BaseDirectory.xdg_config_home, "speech-dispatcher")

    def system_conf_dir(self):
        """Determine system configuration directory"""
        return paths.SPD_CONF_PATH

    def user_conf_dir_exists(self):
        """Determine whether user configuration directory exists"""
        return os.path.exists(self.user_conf_dir())

    def festival_connect(self, host="localhost", port=1314):
        """
        Try to connect to festival and determine whether it is possible.
        On success self.festival_socket is initialized with the openned socket.
        """
        self.festival_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        try:
            self.festival_socket.connect((socket.gethostbyname(host), port))
        except socket.error as e:
            (num, reson) = e.args
            report(_("""ERROR: It was not possible to connect to Festival on the
given host and port. Connection failed with error %d : %s .""" % (num, reson)))
            report(_("""Hint: Most likely, your Festival server is not running now
or not at the default port %d.

Try /etc/init.d/festival start or run 'festival --server' from the command line.""" % port))
            return False
        return True

    def festival_with_freebsoft_utils(self):
        """Test whether festival works and contains working festival-freebsoft-utils.
        """
        if not self.festival_socket:
            if not self.festival_connect():
                return False
        self.festival_socket.send(bytes("(require 'speech-dispatcher)\n", "ascii"))
        reply = str(self.festival_socket.recv(1024))
        if "LP" in reply:
            report(_("Festival contains freebsoft-utils."))
            return True
        else:
            report(_("""ERROR: Your Festival server is working but it doesn't seem
to load festival-freebsoft-utils. You need to install festival-freebsoft-utils
to be able to use Festival with Speech Dispatcher."""))
            return False

    def python_speechd_in_path(self):
        """Try whether python speechd library is installed."""
        import importlib
        try:
            importlib.import_module('speechd')
        except ImportError:
            report(_("""Python can't find the Speech Dispatcher library.
Is it installed? This won't prevent Speech Dispatcher to work, but no
Python applications like Orca will be able to use it.
Search for package like python-speechd, download and install it"""))
            return False
        return True

    def audio_try_play(self, type):
        """Try to play a sound through the standard playback utility for the
        given audio method."""
        wavfile = os.path.join(paths.SPD_SOUND_DATA_PATH,"test.wav")

        binary = None

        if type == 'alsa':
            binary = 'aplay'
        elif type == 'pulse':
            binary = "paplay"
        else:
            raise NotImplementedError("Test for this audio system is not implemented")

        if not shutil.which(binary):
            report(_("""%s selected, but %s not installed. This might be a false
warning, but most likely sound is not working.""" % (type, binary)))
            reply = question(_("Are you sure that %s audio is working?" % type), False)
            return reply

        cmd = '%s %s' % (binary, wavfile)
        if os.system(cmd):
            report(_("Can't play audio via\n     %s" % cmd))
            report(_("""Your audio doesn't seem to work, please fix audio first or choose
a different method."""))
            return False


        reply = question(_("Did you hear the sound?"), True)

        if not reply:
            report(_("""Please examine the above output from the sound playback
utility. If everything seems right, are you sure your audio is loud enough and
not muted in the mixer? Please fix your audio system first or choose a different
audio output method in configuration."""))
            return False
        else:
            report(_("Audio output '%s' works" % type))
            return True

    def test_spd_say(self):
        """Test Speech Dispatcher using spd_say"""

        report(_("Testing Speech Dispatcher using spd_say"))

        while True:
            if os.system("spd-say -P important \"Speech Dispatcher works\""):
                report(_("""Can't execute the spd-say binary,
it is very likely that Speech Dispatcher is not installed."""))
                return False
            hearing_test = question(_("Did you hear the message about Speech Dispatcher working?"), True)
            if hearing_test:
                report(_("Speech Dispatcher is installed and working!"))
                return True
            else:
                report(_("Speech Dispatcher is installed but there is some problem"))
                return False

    def test_festival(self):
        """Test whether Festival works as a server"""
        report(_("Testing whether Festival works as a server"))

        ret = self.festival_with_freebsoft_utils()
        if not ret:
            report(_("Festival server is not working."))
            return False
        else:
            report(_("Festival server seems to work correctly"))
            return True

    def test_espeak(self):
        """Test the espeak utility"""

        report(_("Testing whether Espeak works"))
        if shutil.which('espeak'):
            report(_("Espeak is installed"))
            return True
        else:
            report(_("""Can't execute the espeak binary, it is likely that espeak
is not installed."""))
            return False

    def test_alsa(self):
        """Test ALSA sound output"""
        report(_("Testing ALSA sound output"))
        return self.audio_try_play(type='alsa')

    def test_pulse(self):
        """Test Pulse Audio sound output"""
        report(_("Testing PULSE sound output"))
        return self.audio_try_play(type='pulse')

    def diagnostics(self, speechd_running = True, output_modules=None,
            audio_output=None):
        """Perform a complete diagnostics"""
        working_modules = []
        working_audio = []

        if speechd_running:
            # Test whether Speech Dispatcher works
            if self.test_spd_say():
                spd_say_working = True
                skip = question(_("Speech Dispatcher works. Do you want to skip other tests?"),
                                True)
                if skip:
                    return {'spd_say_working': True}
            else:
                spd_say_working = False
        else:
            spd_say_working = False

        if not spd_say_working:
            if not question(_("""
Speech Dispatcher isn't running or we can't connect to it (see above),
do you want to proceed with other tests? (They can help to determine
what is wrong)"""), True):
                return {'spd_say_working': False}

        def decide_to_test(identifier, name, listing):
            """Ask the user whether to test a specific capability."""
            if not listing:
                return False
            elif identifier in listing and \
                    question(_("Do you want to test the %s now?" % name), True):
                return True
            else:
                return False

        if decide_to_test('festival', "Festival synthesizer", output_modules):
            if self.test_festival():
                working_modules += ["festival"]

        if decide_to_test('espeak', "Espeak synthesizer", output_modules):
            if self.test_espeak():
                working_modules += ["espeak"]

        if decide_to_test('alsa', "ALSA sound system", audio_output):
            if self.test_alsa():
                working_audio += ["alsa"]

        if decide_to_test('pulse', "Pulse Audio sound system", audio_output):
            if self.test_pulse():
                working_audio += ["pulse"]

        report(_("Testing whether Python Speech Dispatcher library is in path and importable"))
        python_speechd_working = self.python_speechd_in_path()

        return  {'spd_say_working': spd_say_working,
                 'audio': working_audio,
                 'synthesizers': working_modules,
                 'python_speechd' : python_speechd_working}

    def write_diagnostics_results(self, results):
        """Write out diagnostics results using report()"""

        report(_("""

Diagnostics results:"""))
        if 'spd_say_working' in results:
            if results['spd_say_working']:
                report(_("Speech Dispatcher is working"))
            else:
                report(_("Speech Dispatcher not working through spd-say"))
        if 'synthesizers' in results:
            report(_("Synthesizers that were tested and seem to work: %s") %
                   str(results['synthesizers']))
        if 'audio' in results:
            report(_("Audio systems that were tested and seem to work: %s") %
                   str(results['audio']))
        if 'python_speechd' in results:
            if(results['python_speechd']):
                report(_("Python Speech Dispatcher module is importable"))
            else:
                report(_("""Python Speech Dispatcher module not importable.
Either not installed or not in path."""))
        report(_("End of diagnostics results"))

    def user_configuration_seems_complete(self):
        """Decide if the user configuration seems reasonably complete"""
        if not os.path.exists(os.path.join(self.user_conf_dir(), "speechd.conf")):
            return False

        if not len(os.listdir(self.user_conf_dir())) > 2:
            return False

        if not os.path.exists(os.path.join(self.user_conf_dir(), "modules")):
            return False

        if not os.path.exists(os.path.join(self.user_conf_dir(), "clients")):
            return False

        return True

    def debug_and_report(self, type = None):
        """Start Speech Dispatcher in debugging mode, collect the debugging output
        and offer to send it to the developers"""

        report(_("Starting collecting debugging output, configuration and logfiles"))

        if not type:
            type = question_with_required_answers(_("""
Do you want to debug 'system' or  'user' Speech Dispatcher?"""),
                                                  'user', ['user', 'system'])

        # Try to kill running Speech Dispatcher
        reply = question(_("""It is necessary to kill the currently running Speech Dispatcher
processes. Do you want to do it now?"""), True)
        if reply:
            os.system("killall speech-dispatcher")
            # Attempt to workaround the psmisc 22.15 bug with 16 char max process names
            os.system("killall speech-dispatch")
        else:
            report(_("""
You decided not to kill running Speech Dispatcher processes.
Please make sure your Speech Dispatcher is not running now."""))
            reply = question(_("Is your Speech Dispatcher not running now?"), True)
            if not reply:
                report(_("Can't continue, please stop your Speech Dispatcher and try again"))

        time.sleep(2)

        # All debugging files are written to TMPDIR/speech-dispatcher/
        if 'TMPDIR' in os.environ:
            tmpdir = os.environ['TMPDIR']
        else:
            tmpdir = "/tmp/"
        debugdir_path = os.path.join(tmpdir, "speechd-debug")
        date = datetime.date.today()
        debugarchive_path = os.path.join(tmpdir, "speechd-debug-%d-%d-%d.tar.gz" %
                                         (date.day, date.month, date.year))

        # Start Speech Dispatcher with debugging enabled
        if type == 'user':
            report(_("Speech Dispatcher will be started now in debugging mode"))
            speechd_started = not os.system("speech-dispatcher -D")
            configure_directory = self.user_conf_dir()
        else:
            report(_("Warning: You must be root or under sudo to do this.")        )
            report(_("""
Please start your system Speech Dispatcher now with parameter '-D'"""))
            reply = question(_("Is your Speech Dispatcher running now?"), True)
            if reply:
                speechd_started = True
            else:
                report(_("Can't continue"))
            configure_directory = self.system_conf_dir()
        time.sleep(2)

        if not speechd_started:
            reply = question(_("Speech Dispatcher failed to start, continuing anyway?"),
                    False)

        report(_("Trying to speak some messages"))
        ret = os.system("spd-say \"Speech Dispatcher debugging 1\"")
        if not ret:
            os.system("spd-say \"Speech Dispatcher debugging 2\"")
            os.system("spd-say \"Speech Dispatcher debugging 3\"")
        else:
            report(_("Can't test Speech Dispatcher connection, can't connect"))

        report(_("Please wait (about 5 seconds)"))
        time.sleep(5)

        report(_("Collecting debugging output and your configuration information") )

        os.system("umask 077")
        os.system("tar -cz %s %s > %s" %
                  (debugdir_path, configure_directory, debugarchive_path))
        os.system("killall speech-dispatcher")
        # Attempt to workaround the psmisc 22.15 bug with 16 char max process names
        os.system("killall speech-dispatch")
        os.system("rm -rf %s" % debugdir_path)

        report(_("""
Please send %s to speechd@bugs.freebsoft.org with
a short description of what you did. We will get in touch with you soon
and suggest a solution.""" % debugarchive_path))

class Configure:

    """Setup user configuration and/or set basic options in user/system configuration"""

    default_output_module = None
    default_language = None
    default_audio_method = None
    def __init__(self, test):
        self.test = test

    def remove_user_configuration(self):
        """Remove user configuration tree"""
        shutil.rmtree(self.test.user_conf_dir())

    def options_substitute(self, configfile, options):
        """Substitute the given options with given values.

        Arguments:
        configfile -- the file path of the configuration file as a string
        options -- a list of tuples (option_name, value)"""

        # Parse config file in-place and replace the desired options+values
        for line in fileinput.input(configfile, inplace=True, backup=".bak"):
            # Check if the current line contains any of the desired options
            for opt, value in options.items():
                if opt in line:
                    # Now count unknown words and try to judge if this is
                    # real configuration or just a comment
                    unknown = 0
                    for word in line.split():
                        if word =='#' or word == '\t':
                            continue
                        elif word == opt:
                            # If a foreign word went before our option identifier,
                            # we are not in code but in comments
                            if unknown != 0:
                                unknown = 2
                                break
                        else:
                            unknown += 1

                    # Only consider the line as the actual code when the keyword
                    # is followed by exactly one word value. Otherwise consider this
                    # line as plain comment and leave intact
                    if unknown == 1:
                        # Convert value into string representation in spd_val
                        if isinstance(value, bool):
                            if value:
                                spd_val = "1"
                            elif not value:
                                spd_val = "2"
                        elif isinstance(value, int):
                            spd_val = str(value)
                        else:
                            spd_val = str(value)

                        print(opt + "   " + spd_val)
                        break

            else:
                print(line, end=' ')

    def create_user_configuration(self):
        """Create user configuration in the standard location"""

        # Ask before touching things that we do not have to!
        if self.test.user_conf_dir_exists():
            if self.test.user_configuration_seems_complete():
                reply = question(_("""User configuration already exists.
Do you want to rewrite it with a new one?"""), False)
                if not reply:
                    report(_("Keeping configuration intact and continuing with settings."))
                    return
                else:
                    self.remove_user_configuration()
            else:
                reply = question(_("""User configuration already exists, but it seems to be incomplete.
Do you want to keep it?"""), False)
                if not reply:
                    self.remove_user_configuration()
                else:
                    report(_("Keeping configuration intact and aborting."))
                    return
        # Copy the original intact configuration files
        # creating a conf/ subdirectory
        shutil.copytree(paths.SPD_CONF_ORIG_PATH, self.test.user_conf_dir())

        report(_("User configuration created in %s" % self.test.user_conf_dir()))

    def configure_basic_settings(self, type='user'):
        """Ask for basic settings and rewrite them in the configuration file"""

        if type == 'user':
            report(_("Configuring user settings for Speech Dispatcher"))
        elif type == 'system':
            report(_("Warning: You must be root or under sudo to do this."))
            report(_("Configuring system settings for Speech Dispatcher"))
        else:
            raise ValueError("Invalid configuration type")

        # Now determine the most important config option
        self.default_output_module = question_with_suggested_answers(
            "Default output module",
            "espeak",
            ["espeak", "flite", "festival", "cicero", "ibmtts"])

        self.default_language = question(
            "Default language (two-letter iso language code like \"en\" or \"cs\")",
            "en")

        self.default_audio_method = question_with_suggested_answers(
            "Default audio output method",
            "pulse",
            ["pulse", "libao", "alsa", "oss", "pulse,alsa"])

        default_speech_rate = question(
            _("Default speech rate (on the scale of -100..100, 0 is default, 50 is faster, -50 is slower)"),
            "0")

        default_speech_pitch = question(
            _("Default speech pitch (on the scale of -100..100, 0 is default, 50 is higher, -50 is lower)"),
            "0")


        # Substitute given configuration options
        if type == 'user':
            configfile = os.path.join(self.test.user_conf_dir(), "speechd.conf")
        elif type == 'system':
            configfile = os.path.join(self.test.system_conf_dir(), "speechd.conf")

        self.options_substitute(configfile,
                                {"DefaultModule": self.default_output_module,
                                 "DefaultLanguage": self.default_language,
                                 "AudioOutputMethod": self.default_audio_method,
                                 "DefaultRate": default_speech_rate,
                                 "DefaultPitch": default_speech_pitch,
                                 })
        if type == 'user':
            setup_autostart = question(
                _("""Do you want to have Speech Dispatcher automatically started from ~/.config/autostart ?
This is usually not necessary, most applications will start Speech Dispatcher automatically."""),
                False)
            if setup_autostart:
                os.system("""cp %s ~/.config/autostart/""" % os.path.join(paths.SPD_DESKTOP_CONF_PATH,
                                                                          "speechd.desktop"))

                report(_("""
Configuration written to %s
Basic configuration now complete. You might still need to fine tune it by
manually editing the configuration file above. Especially if you need to
use special audio settings, non-standard synthesizer ports etc.""" % configfile))

    def speechd_start_user(self):
        """Start Speech Dispatcher in user-mode"""

        report(_("Starting Speech Dispatcher in user-mode"))

        err = os.system("speech-dispatcher")
        if err:
            report(_("Can't start Speech Dispatcher. Exited with status %d" % err))
            reply = question(_("""Perhaps this is because your Speech Dispatcher is already running.
Do you want to kill all running Speech Dispatchers and try again?"""), True)
            if reply:
                os.system("killall speech-dispatcher")
                # Attempt to workaround the psmisc 22.15 bug with 16 char max process names
                os.system("killall speech-dispatch")
                err = os.system("speech-dispatcher")
                if err:
                    report(_("Can't start Speech Dispatcher"))
                    return False
            else:
                return False
        return True

    def speechd_start_system(self):
        """Start Speech Dispatcher in system-mode"""

        report(_("Warning: You must be root or under sudo to do this.")        )
        report(_("Starting Speech Dispatcher in system-mode"))

        reply = question(_("Is your system using an /etc/init.d/speech-dispatcher script?"),
                         True)
        if reply:
            report(_("Stopping Speech Dispatcher in case any is running already"))
            os.system("/etc/init.d/speech-dispatcher stop")
            report(_("Starting Speech Dispatcher via /etc/init.d/speech-dispatcher"))
            ret = os.system("/etc/init.d/speech-dispatcher start")
            if ret:
                report(_("Can't start Speech Dispatcher. Exited with status %d" % ret))
                return False
        else:
            report(_("""Do not know how to start system Speech Dispatcher,
you have to start it manually to continue."""))
            reply = question(_("Have you started Speech Dispatcher now?"), True)
            if not reply:
                report(_("Can't continue"))
                return False
        return True

    def complete_config(self):
        """Create a complete configuration, run diagnosis and if necessary, debugging"""

        speechd_type = question_with_required_answers(
            _("Do you want to create/setup a 'user' or 'system' configuration"),
            'user', ['user', 'system'])

        if speechd_type == 'user':
            self.create_user_configuration()
            self.configure_basic_settings(type='user')
        elif speechd_type == 'system':
            self.configure_basic_settings(type='system')
        else:
            raise ValueError("Invalid configuration type")

        reply = question(_("Do you want to start/restart Speech Dispatcher now and run some tests?"), True)
        if not reply:
            report(_("Your configuration is now done but not tested"))
            return
        else:
            if speechd_type == 'user':
                started = self.speechd_start_user()
            elif speechd_type == 'system':
                started = self.speechd_start_system()

        if not started:
            report(_("Your Speech Dispatcher is not running"))

        result = self.test.diagnostics(speechd_running = started,
                                  audio_output=[self.default_audio_method],
                                  output_modules=[self.default_output_module])
        self.test.write_diagnostics_results(result)

        if not started:
            reply = question(_("Do you want to run debugging now and send a request for help to the developers?"),
                             False)
            if reply:
                self.test.debug_and_report(type=speechd_type)


# Basic objects

def main():
    options = setup_argparse()
    options = options.parse_args()
    test = Tests()
    configure = Configure(test) # that should possibly be refactored, test should not be passed


    report(_("\nSpeech Dispatcher configuration tool\n"))

    if options.create_user_configuration:
        # Check for and/or create basic user configuration
        configure.create_user_configuration()
        reply = question(_("Do you want to continue with basic settings?"), True)
        if reply:
            configure.configure_basic_settings(type='user')
    elif options.config_basic_settings_user:
        configure.configure_basic_settings(type='user')

    elif options.config_basic_settings_system:
        configure.configure_basic_settings(type='system')

    elif options.test_festival:
        test.test_festival()

    elif options.test_spd_say:
        test.test_spd_say()

    elif options.test_espeak:
        test.test_espeak()

    elif options.test_alsa:
        test.audio_try_play(type='alsa')

    elif options.test_pulse:
        test.audio_try_play(type='pulse')

    elif options.diagnostics:
        ret = test.diagnostics()
        test.write_diagnostics_results(ret)

    elif options.debug:
        test.debug_and_report()

    else:
        reply = question(_("Do you want to setup a completely new configuration?"), True)
        if reply:
            configure.complete_config()
        else:
            reply = question(_("Do you want to run diagnosis of problems?"), True)
            if reply:
                ret=test.diagnostics()
                test.write_diagnostics_results(ret)
            else:
                report(_("""Please run this command again and select what you want to do
or read the quick help available through '-h' or '--help'."""))

if __name__ == "__main__":
    sys.exit(main())
