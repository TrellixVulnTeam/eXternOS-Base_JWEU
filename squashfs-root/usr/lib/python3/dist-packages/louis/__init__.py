# Liblouis Python ctypes bindings
#
# Copyright (C) 2009, 2010 James Teh <jamie@jantrid.net>
#
# This file is part of liblouis.
# 
# liblouis is free software: you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License, or
# (at your option) any later version.
# 
# liblouis is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
# 
# You should have received a copy of the GNU Lesser General Public
# License along with liblouis. If not, see <http://www.gnu.org/licenses/>.
# 

"""Liblouis Python ctypes bindings
These bindings allow you to use the liblouis braille translator and back-translator library from within Python.
This documentation is only a Python helper.
Please see the liblouis documentation for more information.

Most of these functions take a C{tableList} argument which specifies
a list of translation tables to use. Please see the liblouis documentation
concerning the C{tableList} parameter to the C{lou_translateString}
function for information about how liblouis searches for these tables.

@author: Michael Curran <mick@kulgan.net>
@author: James Teh <jamie@jantrid.net>
@author: Eitan Isaacson <eitan@ascender.com>
@author: Michael Whapples <mwhapples@aim.com>
@author: Davy Kager <mail@davykager.nl>
"""

from ctypes import *
import struct
import atexit
import sys

# Some general utility functions
def _createTablesString(tablesList):
    """Creates a tables string for liblouis calls"""
    return b",".join([x.encode("ASCII") if isinstance(x, str) else bytes(x) for x in tablesList])

def _createTypeformbuf(length, typeform=None):
    """Creates a typeform buffer for liblouis calls"""
    return (c_ushort*length)(*typeform) if typeform else (c_ushort*length)()

createStr = None
if sys.version_info[0] == 2:
    createStr = lambda x: unicode(x)
else:
    createStr = lambda x: str(x)

#{ Module Configuration
#: Specifies the number by which the input length should be multiplied
#: to calculate the maximum output length.
#: @type: int
# This default will handle the case where every input character is
# undefined in the translation table.
outlenMultiplier = 4 + sizeof(c_wchar) * 2
#}

try:
    # Native win32
    _loader = windll
except NameError:
    # Unix/Cygwin
    _loader = cdll
liblouis = _loader["liblouis.so.14"]

atexit.register(liblouis.lou_free)

liblouis.lou_version.restype = c_char_p

liblouis.lou_charSize.restype = c_int

liblouis.lou_translateString.argtypes = (
    c_char_p, c_wchar_p, POINTER(c_int), c_wchar_p, 
         POINTER(c_int), POINTER(c_ushort), POINTER(c_char), c_int)

liblouis.lou_translate.argtypes = (
    c_char_p, c_wchar_p, POINTER(c_int), c_wchar_p, 
         POINTER(c_int), POINTER(c_ushort), POINTER(c_char), 
         POINTER(c_int), POINTER(c_int), POINTER(c_int), c_int)

liblouis.lou_backTranslateString.argtypes = (
         c_char_p, c_wchar_p, POINTER(c_int), c_wchar_p,
         POINTER(c_int), POINTER(c_ushort), POINTER(c_char), c_int)

liblouis.lou_backTranslate.argtypes = (
         c_char_p, c_wchar_p, POINTER(c_int), c_wchar_p, POINTER(c_int),
         POINTER(c_ushort), POINTER(c_char), POINTER(c_int), POINTER(c_int),
         POINTER(c_int), c_int)

liblouis.lou_hyphenate.argtypes = (
         c_char_p, c_wchar_p, c_int, POINTER(c_char), c_int)

liblouis.lou_checkTable.argtypes = (c_char_p,)

liblouis.lou_compileString.argtypes = (c_char_p, c_char_p)

liblouis.lou_getTypeformForEmphClass.argtypes = (c_char_p, c_char_p)

def version():
    """Obtain version information for liblouis.
    @return: The version of liblouis, plus other information, such as
        the release date and perhaps notable changes.
    @rtype: str
    """
    return liblouis.lou_version().decode("ASCII")

def charSize():
    """Obtain charSize information for liblouis.
    @return: The size of the widechar with which liblouis was compiled.
    @rtype: int
    """
    return liblouis.lou_charSize()

def translate(tableList, inbuf, typeform=None, cursorPos=0, mode=0):
    """Translate a string of characters, providing position information.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param inbuf: The string to translate.
    @type inbuf: str
    @param typeform: A list of typeform constants indicating the typeform for each position in inbuf,
        C{None} for no typeform information.
    @type typeform: list of int
    @param cursorPos: The position of the cursor in inbuf.
    @type cursorPos: int
    @param mode: The translation mode; add multiple values for a combined mode.
    @type mode: int
    @return: A tuple of: the translated string,
        a list of input positions for each position in the output,
        a list of output positions for each position in the input, and
        the position of the cursor in the output.
    @rtype: (str, list of int, list of int, int)
    @raise RuntimeError: If a complete translation could not be done.
    @see: lou_translate in the liblouis documentation
    """
    tablesString = _createTablesString(tableList)
    inbuf = createStr(inbuf)
    inlen = c_int(len(inbuf))
    outlen = c_int(inlen.value*outlenMultiplier)
    outbuf = create_unicode_buffer(outlen.value)
    typeformbuf = None
    if typeform:
        typeformbuf = _createTypeformbuf(outlen.value, typeform)
    inPos = (c_int*outlen.value)()
    outPos = (c_int*inlen.value)()
    cursorPos = c_int(cursorPos)
    if not liblouis.lou_translate(tablesString, inbuf, byref(inlen), 
                                  outbuf, byref(outlen), typeformbuf, 
                                  None, outPos, inPos, byref(cursorPos), mode):
        raise RuntimeError("Can't translate: tables %s, inbuf %s, typeform %s, cursorPos %s, mode %s"%(tableList, inbuf, typeform, cursorPos, mode))
    if isinstance(typeform, list):
        typeform[:] = list(typeformbuf)
    return outbuf.value, inPos[:outlen.value], outPos[:inlen.value], cursorPos.value

def translateString(tableList, inbuf, typeform=None, mode=0):
    """Translate a string of characters.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param inbuf: The string to translate.
    @type inbuf: str
    @param typeform: A list of typeform constants indicating the typeform for each position in inbuf,
        C{None} for no typeform information.
    @type typeform: list of int
    @param mode: The translation mode; add multiple values for a combined mode.
    @type mode: int
    @return: The translated string.
    @rtype: str
    @raise RuntimeError: If a complete translation could not be done.
    @see: lou_translateString in the liblouis documentation
    """
    tablesString = _createTablesString(tableList)
    inbuf = createStr(inbuf)
    inlen = c_int(len(inbuf))
    outlen = c_int(inlen.value*outlenMultiplier)
    outbuf = create_unicode_buffer(outlen.value)
    typeformbuf = None
    if typeform:
        typeformbuf = _createTypeformbuf(outlen.value, typeform)
    if not liblouis.lou_translateString(tablesString, inbuf, byref(inlen), 
                                        outbuf, byref(outlen), typeformbuf, 
                                        None, mode):
        raise RuntimeError("Can't translate: tables %s, inbuf %s, typeform %s, mode %s"%(tableList, inbuf, typeform, mode))
    if isinstance(typeform, list):
        typeform[:] = list(typeformbuf)
    return outbuf.value

def backTranslate(tableList, inbuf, typeform=None, cursorPos=0, mode=0):
    """Back translates a string of characters, providing position information.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param inbuf: Braille to back translate.
    @type inbuf: str
    @param typeform: List where typeform constants will be placed.
    @type typeform: list
    @param cursorPos: Position of cursor.
    @type cursorPos: int
    @param mode: Translation mode.
    @type mode: int
    @return: A tuple: A string of the back translation,
        a list of input positions for each position in the output,
        a list of the output positions for each position in the input and
        the position of the cursor in the output.
    @rtype: (str, list of int, list of int, int)
    @raise RuntimeError: If a complete back translation could not be done.
    @see: lou_backTranslate in the liblouis documentation.
    """
    tablesString = _createTablesString(tableList)
    inbuf = createStr(inbuf)
    inlen = c_int(len(inbuf))
    outlen = c_int(inlen.value * outlenMultiplier)
    outbuf = create_unicode_buffer(outlen.value)
    typeformbuf = None
    if isinstance(typeform, list):
        typeformbuf = _createTypeformbuf(outlen.value)
    inPos = (c_int*outlen.value)()
    outPos = (c_int*inlen.value)()
    cursorPos = c_int(cursorPos)
    if not liblouis.lou_backTranslate(tablesString, inbuf, byref(inlen),
                    outbuf, byref(outlen), typeformbuf, None,
                    outPos, inPos, byref(cursorPos), mode):
        raise RuntimeError("Can't back translate: tables %s, inbuf %s, typeform %s, cursorPos %d, mode %d"%(tableList, inbuf, typeform, cursorPos, mode))
    if isinstance(typeform, list):
        typeform[:] = list(typeformbuf)
    return outbuf.value, inPos[:outlen.value], outPos[:inlen.value], cursorPos.value

def backTranslateString(tableList, inbuf, typeform=None, mode=0):
    """Back translate from Braille.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param inbuf: The Braille to back translate.
    @type inbuf: str
    @param typeform: List for typeform constants to be put in.
        If you don't want typeform data then give None
    @type typeform: list
    @param mode: The translation mode
    @type mode: int
    @return: The back translation of inbuf.
    @rtype: str
    @raise RuntimeError: If a complete back translation could not be done.
    @see: lou_backTranslateString in the liblouis documentation.
    """
    tablesString = _createTablesString(tableList)
    inbuf = createStr(inbuf)
    inlen = c_int(len(inbuf))
    outlen = c_int(inlen.value * outlenMultiplier)
    outbuf = create_unicode_buffer(outlen.value)
    typeformbuf = None
    if isinstance(typeform, list):
        typeformbuf = _createTypeformbuf(outlen.value)
    if not liblouis.lou_backTranslateString(tablesString, inbuf, byref(inlen), outbuf,
                    byref(outlen), typeformbuf, None, mode):
        raise RuntimeError("Can't back translate: tables %s, inbuf %s, mode %d"%(tableList, inbuf, mode))
    if isinstance(typeform, list):
        typeform[:] = list(typeformbuf)
    return outbuf.value

def hyphenate(tableList, inbuf, mode=0):
    """Get information for hyphenation.
    @param tableList: A list of translation tables and hyphenation
        dictionaries.
    @type tableList: list of str
    @param inbuf: The text to get hyphenation information about.
        This should be a single word and leading/trailing whitespace
        and punctuation is ignored.
    @type inbuf: str
    @param mode: Lets liblouis know if inbuf is plain text or Braille.
        Set to 0 for text and anyother value for Braille.
    @type mode: int
    @return: A string with '1' at the beginning of every syllable
        and '0' elsewhere.
    @rtype: str
    @raise RuntimeError: If hyphenation data could not be produced.
    @see: lou_hyphenate in the liblouis documentation.
    """
    tablesString = _createTablesString(tableList)
    inbuf = createStr(inbuf)
    inlen = c_int(len(inbuf))
    hyphen_string = create_string_buffer(inlen.value + 1) 
    if not liblouis.lou_hyphenate(tablesString, inbuf, inlen, hyphen_string, mode):
        raise RuntimeError("Can't hyphenate: tables %s, inbuf %s, mode %d"%(tableList, inbuf, mode))
    return hyphen_string.value.decode("ASCII")

def checkTable(tableList):
    """Check if the specified tables can be found and compiled.
        This can be used to check if a list of tables contains errors
        before sending it to other liblouis functions
        that accept a list of tables.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @raise RuntimeError: If compilation failed.
    @see: lou_checkTable in the liblouis documentation
    """
    tablesString = _createTablesString(tableList)
    if not liblouis.lou_checkTable(tablesString):
        raise RuntimeError("Can't compile: tables %s"%tableList)

def compileString(tableList, inString):
    """Compile a table entry on the fly at run-time.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param inString: The table entry to be added.
    @type inString: str
    @raise RuntimeError: If compilation of the entry failed.
    @see: lou_compileString in the liblouis documentation
    """
    tablesString = _createTablesString(tableList)
    inBytes = inString.encode("ASCII") if isinstance(inString, str) else bytes(inString)
    if not liblouis.lou_compileString(tablesString, inString):
        raise RuntimeError("Can't compile entry: tables %s, inString %s"%(tableList, inString))

def getTypeformForEmphClass(tableList, emphClass):
    """Get the typeform bit for the named emphasis class.
    @param tableList: A list of translation tables.
    @type tableList: list of str
    @param emphClass: An emphasis class name.
    @type emphClass: str
    @see: lou_getTypeformForEmphClass in the liblouis documentation
    """
    tablesString = _createTablesString(tableList)
    return liblouis.lou_getTypeformForEmphClass(tablesString, emphClass)

#{ Typeforms
plain_text = 0x0000
italic = 0x0001       # emph_1
underline = 0x0002    # emph_2
bold = 0x0004         # emph_3
emph_4 = 0x0008
emph_5 = 0x0010
emph_6 = 0x0020
emph_7 = 0x0040
emph_8 = 0x0080
emph_9 = 0x0100
emph_10 = 0x0200
computer_braille = 0x0400
no_translate = 0x0800
no_contract = 0x1000
#}

#{ Translation modes
noContractions = 1
compbrlAtCursor = 2
dotsIO = 4
compbrlLeftCursor = 32
ucBrl = 64
noUndefinedDots = 128
partialTrans = 256
#}

if charSize() == 2 and sys.maxunicode != 65535:
    raise Exception("mismatch in Unicode width: liblouis is 2 and python isn't")
elif charSize() == 4 and sys.maxunicode != 1114111:
    raise Exception("mismatch in Unicode width: liblouis is 4 and python isn't")

if __name__ == '__main__':
    # Just some common tests.
    print(version())
    print(translate([b'../tables/en-us-g2.ctb'], 'Hello world!', cursorPos=5))
