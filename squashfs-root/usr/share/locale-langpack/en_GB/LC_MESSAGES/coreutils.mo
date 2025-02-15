��    9      �  O   �      �  �   �  w   �       D  %  >   j	  �   �	  �  �
  �   �       �   $    �  �   �  �  �  �   *    �  �  �  F   �  <   �  �  -  	  �  �   �  *   o  �  �  L   9  	   �     �     �     �  ;  �  �        �  D        H     Y  G   n  �   �  �  ?   ;   �!  3   0"  /   d"  +   �"  '   �"  #   �"     #     ,#  0   H#  *   y#  3   �#     �#     �#  ]   
$     h$     �$  3   �$  7   �$  "   %  �  '%  �   �&  }   �'    (  E  )  >   e+  �   �+     �,  �   �.  _   /  �   n/    �/  �   1  �  �1  �   v3    14  �  A5  E   �6  $   <7  �  a7  	  9  �   ;  *   �;  �  �;  L   n>  	   �>     �>     �>     �>  <  ?  �   N@     4A  N   <A     �A     �A  G   �A  �   �A  �  �B  :   :D  2   uD  .   �D  *   �D  &   E  "   )E     LE     kE  1   �E  *   �E  4   �E     F     0F  ]   JF     �F     �F  3   �F  7   G  "   DG     $                  ,                     
   5   '      "          &   )   9       +          	                          (      3              /                    1      #   *                0         2          %   6       8          .              7       !      -      4           
  --check-order     check that the input is correctly sorted, even
                      if all input lines are pairable
  --nocheck-order   do not check that the input is correctly sorted
 
A field is a run of blanks (usually spaces and/or TABs), then non-blank
characters.  Fields are skipped before chars.
 
Both MAJOR and MINOR must be specified when TYPE is b, c, or u, and they
must be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,
it is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;
otherwise, as decimal.  TYPE may be:
 
By default, sparse SOURCE files are detected by a crude heuristic and the
corresponding DEST file is made sparse as well.  That is the behavior
selected by --sparse=auto.  Specify --sparse=always to create a sparse DEST
file whenever the SOURCE file contains a long enough sequence of zero bytes.
Use --sparse=never to inhibit creation of sparse files.

When --reflink[=always] is specified, perform a lightweight copy, where the
data blocks are copied only when modified.  If this is not possible the copy
fails, or if --reflink=auto is specified, fall back to a standard copy.
 
If -e is in effect, the following sequences are recognized:

 
If FILE is specified, read it to determine which colors to use for which
file types and extensions.  Otherwise, a precompiled database is used.
For details on the format of these files, run 'dircolors --print-database'.
 
MODE determines behavior with write errors on the outputs:
  'warn'         diagnose errors writing to any output
  'warn-nopipe'  diagnose errors writing to any output not a pipe
  'exit'         exit on error writing to any output
  'exit-nopipe'  exit on error writing to any output not a pipe
The default MODE for the -p option is 'warn-nopipe'.
The default operation when --output-error is not specified, is to
exit immediately on error writing to a pipe, and diagnose errors
writing to non pipe outputs.
 
NOTE: [ honors the --help and --version options, but test does not.
test treats each of those as it treats any other nonempty STRING.
 
Report bugs to: %s
 
Using -s ignores -L and -P.  Otherwise, the last option specified controls
behavior when a TARGET is a symbolic link, defaulting to %s.
 
Using color to distinguish file types is disabled both by default and
with --color=never.  With --color=auto, ls emits color codes only when
standard output is connected to a terminal.  The LS_COLORS environment
variable can change the settings.  Use the dircolors command to set it.
 
With no options, produce three-column output.  Column one contains
lines unique to FILE1, column two contains lines unique to FILE2,
and column three contains lines common to both files.
       --files0-from=F   summarize disk usage of the
                          NUL-terminated file names specified in file F;
                          if F is -, then read names from standard input
  -H                    equivalent to --dereference-args (-D)
  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)
      --inodes          list inode usage information instead of block usage
       --lookup      attempt to canonicalize hostnames via DNS
  -m                only hostname and user associated with stdin
  -p, --process     print active processes spawned by init
   -a, --all                  do not ignore entries starting with .
  -A, --almost-all           do not list implied . and ..
      --author               with -l, print the author of each file
  -b, --escape               print C-style escapes for nongraphic characters
   -f, --canonicalize            canonicalize by following every symlink in
                                every component of the given name recursively;
                                all but the last component must exist
  -e, --canonicalize-existing   canonicalize by following every symlink in
                                every component of the given name recursively,
                                all components must exist
   -f, --file-system      sync the file systems that contain the files
   -g                         like -l, but do not list owner
   -h, --header=HEADER
                    use a centered HEADER instead of filename in page header,
                    -h "" prints a blank line, don't use -h""
  -i[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]]
                    replace spaces with CHARs (TABs) to tab WIDTH (8)
  -J, --join-lines  merge full lines, turns off -W line truncation, no column
                    alignment, --sep-string[=STRING] sets separators
   -m, --canonicalize-missing    canonicalize by following every symlink in
                                every component of the given name recursively,
                                without requirements on components existence
  -n, --no-newline              do not output the trailing delimiter
  -q, --quiet,
  -s, --silent                  suppress most error messages (on by default)
  -v, --verbose                 report error messages
  -z, --zero                    end each output line with NUL, not newline
   -p                        diagnose errors writing to non pipes
      --output-error[=MODE]   set behavior on write error.  See MODE below
   dsync     use synchronized I/O for data
   if=FILE         read from FILE instead of stdin
  iflag=FLAGS     read as per the comma separated symbol list
  obs=BYTES       write BYTES bytes at a time (default: 512)
  of=FILE         write to FILE instead of stdout
  oflag=FLAGS     write as per the comma separated symbol list
  seek=N          skip N obs-sized blocks at start of output
  skip=N          skip N ibs-sized blocks at start of input
  status=LEVEL    The LEVEL of information to print to stderr;
                  'none' suppresses everything but error messages,
                  'noxfer' suppresses the final transfer statistics,
                  'progress' shows periodic transfer statistics
  * [-]ixany      let any character restart output, not only start character
 %b %e  %Y %b %e %H:%M %s: unrecognized option '%s%s'
 %s:%lu: unrecognized keyword %s * log-structured or journaled file systems, such as those supplied with
AIX and Solaris (and JFS, ReiserFS, XFS, Ext3, etc.)

* file systems that write redundant data and carry on even if some writes
fail, such as RAID-based file systems

* file systems that make snapshots, such as Network Appliance's NFS server

 Diagnose invalid or unportable file names.

  -p                  check for most POSIX systems
  -P                  check for empty names and leading "-"
      --portability   check for all POSIX systems (equivalent to -p -P)
 Hangup Report %s translation bugs to <http://translationproject.org/team/>
 Request canceled Request not canceled Summarize disk usage of the set of FILEs, recursively for directories.
 Synchronize cached writes to persistent storage

If one or more files are specified, sync only them,
or their containing file systems.

 With --follow (-f), tail defaults to following the file descriptor, which
means that even if a tail'ed file is renamed, tail will continue to track
its end.  This default behavior is not desirable when you really want to
track the actual name of the file, not the file descriptor (e.g., log
rotation).  Use --follow=name in that case.  That causes tail to track the
named file in a way that accommodates renaming, removal and creation.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s, and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s,
and %s.
 Written by %s, %s, %s,
%s, %s, %s, and %s.
 Written by %s, %s, %s,
%s, %s, and %s.
 Written by %s, %s, %s,
%s, and %s.
 Written by %s, %s, %s,
and %s.
 Written by %s, %s, and %s.
 can't apply partial context to unlabeled file %s cannot both summarize and show all entries delimiter list ends with an unescaped backslash: %s error canonicalizing %s failed to canonicalize %s invalid option -- %c; -WIDTH is recognized only when it is the first
option; use -w N instead unrecognized operand %s unrecognized prefix: %s warning: summarizing conflicts with --max-depth=%lu warning: summarizing is the same as using --max-depth=0 warning: unrecognized escape '\%c' Project-Id-Version: coreutils
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
PO-Revision-Date: 2018-01-28 20:00+0000
Last-Translator: Andi Chandler <Unknown>
Language-Team: English (United Kingdom) <en_GB@li.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Launchpad-Export-Date: 2018-07-12 12:47+0000
X-Generator: Launchpad (build 18719)
 
  --check-order     check that the input is correctly sorted, even
                      if all input lines can be paired
  --nocheck-order   do not check that the input is correctly sorted
 
A field is a run of blanks (usually spaces and/or TABs) followed by non-blank
characters.  Fields are skipped before chars.
 
Both MAJOR and MINOR must be specified when TYPE is b, c, or u, and they
must be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,
it is interpreted as hexadecimal; if it begins with 0, as octal;
otherwise, it is interpreted as decimal.  TYPE may be:
 
By default, sparse SOURCE files are detected by a crude heuristic and the
corresponding DEST file is made sparse as well.  That is the behaviour
selected by --sparse=auto.  Specify --sparse=always to create a sparse DEST
file whenever the SOURCE file contains a long enough sequence of zero bytes.
Use --sparse=never to inhibit creation of sparse files.

When --reflink[=always] is specified, perform a lightweight copy, where the
data blocks are copied only when modified.  If this is not possible the copy
fails, or if --reflink=auto is specified, fall back to a standard copy.
 
If -e is in effect, the following sequences are recognised:

 
If FILE is specified, read it to determine which colours to use for which
file types and extensions.  Otherwise, a precompiled database is used.
For details on the format of these files, run 'dircolors --print-database'.
 
MODE determines behaviour with write errors on the outputs:
  'warn'         diagnose errors writing to any output
  'warn-nopipe'  diagnose errors writing to any output not a pipe
  'exit'         exit on error writing to any output
  'exit-nopipe'  exit on error writing to any output not a pipe
The default MODE for the -p option is 'warn-nopipe'.
The default operation when --output-error is not specified, is to
exit immediately on error writing to a pipe, and diagnose errors
writing to non pipe outputs.
 
NOTE: [ honours the --help and --version options, but test does not.
test treats each of those as it treats any other non-empty STRING.
 
Report bugs to: %s
Report translation bugs to <https://bugs.launchpad.net/~ubuntu-l10n-en-gb>
 
Using -s ignores -L and -P.  Otherwise, the last option specified controls
behaviour when a TARGET is a symbolic link, defaulting to %s.
 
Using colour to distinguish file types is disabled both by default and
with --color=never.  With --color=auto, lt emits colour codes only when
standard output is connected to a terminal.  The LS_COLORS environment
variable can change the settings.  Use the dircolors command to set it.
 
With no options, produce three-column output.  Column one contains
lines unique to FILE1, column two contains lines unique to FILE2
and column three contains lines common to both files.
       --files0-from=F   summarise disk usage of the
                          NUL-terminated file names specified in file F;
                          if F is -, then read names from standard input
  -H                    equivalent to --dereference-args (-D)
  -h, --human-readable  print sizes in human readable format (e.g., 1K 234M 2G)
      --inodes          list inode usage information instead of block usage
       --lookup      attempt to canonicalise hostnames via DNS
  -m                only hostname and user associated with stdin
  -p, --process     print active processes spawned by init
   -a, --all                  do not ignore entries starting with .
  -A, --almost-all           do not list implied . and ..
      --author               with -l, print the author of each file
  -b, --escape               print C-style escapes for non-graphic characters
   -f, --canonicalize            canonicalise by following every symlink in
                                every component of the given name recursively;
                                all but the last component must exist
  -e, --canonicalize-existing   canonicalise by following every symlink in
                                every component of the given name recursively,
                                all components must exist
   -f, --file-system      sync the filesystems that contain the files
   -g like -l, but do not list owner
   -h, --header=HEADER
                    use a centred HEADER instead of file-name in page header,
                    -h "" prints a blank line, don't use -h""
  -i[CHAR[WIDTH]], --output-tabs[=CHAR[WIDTH]]
                    replace spaces with CHARs (TABs) to tab WIDTH (8)
  -J, --join-lines  merge full lines, turns off -W line truncation, no column
                    alignment, --sep-string[=STRING] sets separators
   -m, --canonicalize-missing    canonicalise by following every symlink in
                                every component of the given name recursively,
                                without requirements on components existence
  -n, --no-newline              do not output the trailing delimiter
  -q, --quiet,
  -s, --silent                  suppress most error messages (on by default)
  -v, --verbose                 report error messages
  -z, --zero                    end each output line with NUL, not newline
   -p                        diagnose errors writing to non pipes
      --output-error[=MODE]   set behaviour on write error.  See MODE below
   dsync     use synchronised I/O for data
   if=FILE         read from FILE instead of stdin
  iflag=FLAGS     read as per the comma-separated symbol list
  obs=BYTES       write BYTES bytes at a time (default: 512)
  of=FILE         write to FILE instead of stdout
  oflag=FLAGS     write as per the comma-separated symbol list
  seek=N          skip N obs-sized blocks at start of output
  skip=N          skip N ibs-sized blocks at start of input
  status=LEVEL    The LEVEL of information to print to stderr;
                  'none' suppresses everything but error messages,
                  'noxfer' suppresses the final transfer statistics,
                  'progress' shows periodic transfer statistics
  * [-]ixany      let any character restart output, not just start character
 %e %b  %Y %e %b %H:%M %s: unrecognised option '%s%s'
 %s:%lu: unrecognised keyword %s * log-structured or journalled file systems, such as those supplied with
AIX and Solaris (and JFS, ReiserFS, XFS, Ext3, etc.)

* file systems that write redundant data and carry on even if some writes
fail, such as RAID-based file systems

* file systems that make snapshots, such as Network Appliance's NFS server

 Diagnose invalid or non-portable file names.

  -p                  check for most POSIX systems
  -P                  check for empty names and leading "-"
      --portability   check for all POSIX systems (equivalent to -p -P)
 Hang up Report %s translation bugs to <http://translationproject.org/team/en_GB.html>
 Request cancelled Request not cancelled Summarise disk usage of the set of FILEs, recursively for directories.
 Synchronise cached writes to persistent storage

If one or more files are specified, sync only them,
or their containing file systems.

 With --follow (-f), tail defaults to following the file descriptor, which
means that even if a tail'ed file is renamed, tail will continue to track
its end.  This default behaviour is not desirable when you really want to
track the actual name of the file, not the file descriptor (e.g., log
rotation).  Use --follow=name in that case.  That causes tail to track the
named file in a way that accommodates renaming, removal and creation.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s, %s and others.
 Written by %s, %s, %s,
%s, %s, %s, %s,
%s and %s.
 Written by %s, %s, %s,
%s, %s, %s, %s
and %s.
 Written by %s, %s, %s,
%s, %s, %s and %s.
 Written by %s, %s, %s,
%s, %s and %s.
 Written by %s, %s, %s,
%s and %s.
 Written by %s, %s, %s
and %s.
 Written by %s, %s and %s.
 can't apply partial context to unlabelled file %s cannot both summarise and show all entries delimiter list ends with a non-escaped backslash: %s error canonicalising %s failed to canonicalise %s invalid option -- %c; -WIDTH is recognised only when it is the first
option; use -w N instead unrecognised operand %s unrecognised prefix: %s warning: summarising conflicts with --max-depth=%lu warning: summarising is the same as using --max-depth=0 warning: unrecognised escape '\%c' 