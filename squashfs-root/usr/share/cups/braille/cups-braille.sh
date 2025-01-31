#
# Copyright (c) 2015-2017 Samuel Thibault <samuel.thibault@ens-lyon.org>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
# 

# Get an attribute from the ppd file
getAttribute () {
  ATTRIBUTE=$1
  VALUE=`grep "^\*$ATTRIBUTE:" "$PPD" | cut -d" " -f2-`
  VALUE=${VALUE##\"}
  VALUE=${VALUE%%\"}
  printf "DEBUG: Attribute $ATTRIBUTE is '%s'\n" "$VALUE" >&2
  printf "%s" "$VALUE"
}

# Get an option for the document: either default ppd attribute or user-provided value
getOption () {
  OPTION=$1
  VALUE=$(getAttribute Default$OPTION)
  printf "DEBUG: Default $OPTION is '%s'\n" "$VALUE" >&2

  if [ -n "$OPTIONS" ]
  then
    # Case of the very first option
    if [ -z "${OPTIONS/$OPTION=*}" ]
    then
      VALUE=${OPTIONS#$OPTION=}
      VALUE=${VALUE%% *}
      printf "DEBUG: Selected $OPTION is '%s'\n" "$VALUE" >&2
    fi
    # Case of other options
    if [ -z "${OPTIONS/* $OPTION=*}" ]
    then
      VALUE=${OPTIONS##* $OPTION=}
      VALUE=${VALUE%% *}
      printf "DEBUG: Selected $OPTION is '%s'\n" "$VALUE" >&2
    fi

    # Boolean options
    if [ -z "${OPTIONS/* $OPTION *}" ]
    then
      VALUE=True
      printf "DEBUG: Selected $OPTION is '%s'\n" "$VALUE" >&2
    fi
    if [ -z "${OPTIONS/* no$OPTION *}" ]
    then
      VALUE=False
      printf "DEBUG: Selected $OPTION is '%s'\n" "$VALUE" >&2
    fi
  fi

  printf "%s" "$VALUE"
}

# Get an option for the document and check that it is a number
getOptionNumber () {
  OPTION=$1
  VALUE=$(getOption $OPTION)
  VALUE=${VALUE#Custom.}
  case "$VALUE" in
    [0-9]*) ;;
    *) printf "ERROR: Option $OPTION must be a number, got '%s'\n" "$VALUE" >&2
       exit 1
       ;;
  esac
  printf "%s" "$VALUE"
}

# Printing options: number of copies and page ranges
[ -z "$NB" ] && NB=1
PAGERANGES=$(getOption page-ranges)

#
# Page size
# Units in 100th of mm
#

# TODO: better handle imageable area
PAGESIZE=$(getOption PageSize)
case "$PAGESIZE" in
  Legal)
    PAGEWIDTH=21590
    PAGEHEIGHT=35560
    ;;
  Letter)
    PAGEWIDTH=21590
    PAGEHEIGHT=27940
    ;;
  A3)
    PAGEWIDTH=29700
    PAGEHEIGHT=42000
    ;;
  A4)
    PAGEWIDTH=21000
    PAGEHEIGHT=29700
    ;;
  A4TF)
    PAGEWIDTH=21000
    PAGEHEIGHT=30480
    ;;
  A5)
    PAGEWIDTH=14850
    PAGEHEIGHT=21000
    ;;
  110x115)
    PAGEWIDTH=27940
    PAGEHEIGHT=29210
    ;;
  110x120)
    PAGEWIDTH=27940
    PAGEHEIGHT=30480
    ;;
  110x170)
    PAGEWIDTH=27940
    PAGEHEIGHT=43180
    ;;
  115x110)
    PAGEWIDTH=29210
    PAGEHEIGHT=27940
    ;;
  120x120)
    PAGEWIDTH=30480
    PAGEHEIGHT=30480
    ;;
  *)
    printf "ERROR: Unknown page size '%s'\n" "$PAGESIZE" >&2
    exit 1
    ;;
esac

# Margins as announced by embosser
HWMARGINS=$(getAttribute HWMargins)
echo "DEBUG: HW margins are $HWMARGINS" >&2
HWMARGIN_LEFT="${HWMARGINS%% *}"
HWMARGINS="${HWMARGINS#* }"
HWMARGIN_BOTTOM="${HWMARGINS%% *}"
HWMARGINS="${HWMARGINS#* }"
HWMARGIN_RIGHT="${HWMARGINS%% *}"
HWMARGINS="${HWMARGINS#* }"
HWMARGIN_TOP="${HWMARGINS%% *}"

# Convert from points (1/72 of inch) to 1/100th of mm
points2mm() {
  # First get an integer so bash can compute
  # I.e. convert to 10^15th of point
  # Note: bash's integer computation will work until about 1000mm, that's plenty :)
  POINTS="$1"
  INT_POINTS="${POINTS%.*}"
  if [ "$INT_POINTS" = "$POINTS" ]
  then
    FRAC_POINTS=000000000000000
  else
    FRAC_POINTS="${POINTS#*.}000000000000000"
  fi
  FRAC_POINTS="${FRAC_POINTS:0:15}"
  FRAC_POINTS="$INT_POINTS$FRAC_POINTS"
  # Then we can compute conversion
  # We round up to be safe
  FRAC_INCH=$((($FRAC_POINTS + 71) / 72))
  FRAC_CM=$((($FRAC_INCH * 254 + 99) / 100))
  HUNDRENDTH_MM=$((($FRAC_CM + 999999999999) / 1000000000000))
  echo $HUNDRENDTH_MM
}

MARGIN_LEFT=$(points2mm "$HWMARGIN_LEFT")
MARGIN_RIGHT=$(points2mm "$HWMARGIN_RIGHT")
MARGIN_TOP=$(points2mm "$HWMARGIN_TOP")
MARGIN_BOTTOM=$(points2mm "$HWMARGIN_BOTTOM")

# Margins requested by user
PAGE_LEFT=$(points2mm $(getOptionNumber page-left))
PAGE_RIGHT=$(points2mm $(getOptionNumber page-right))
PAGE_TOP=$(points2mm $(getOptionNumber page-top))
PAGE_BOTTOM=$(points2mm $(getOptionNumber page-bottom))

[ -n "$PAGE_LEFT"   -a "$MARGIN_LEFT"   -le "$PAGE_LEFT"   ] || PAGE_LEFT=$MARGIN_LEFT
[ -n "$PAGE_RIGHT"  -a "$MARGIN_RIGHT"  -le "$PAGE_RIGHT"  ] || PAGE_RIGHT=$MARGIN_RIGHT
[ -n "$PAGE_TOP"    -a "$MARGIN_TOP"    -le "$PAGE_TOP"    ] || PAGE_TOP=$MARGIN_TOP
[ -n "$PAGE_BOTTOM" -a "$MARGIN_BOTTOM" -le "$PAGE_BOTTOM" ] || PAGE_BOTTOM=$MARGIN_BOTTOM

echo "DEBUG: hard margins are left $MARGIN_LEFT right $MARGIN_RIGHT top $MARGIN_TOP bottom $MARGIN_BOTTOM" >&2
echo "DEBUG: graphical margins are left $PAGE_LEFT right $PAGE_RIGHT top $PAGE_TOP bottom $PAGE_BOTTOM" >&2

# This is the hardware-printable area
PRINTABLEWIDTH=$(($PAGEWIDTH - $MARGIN_LEFT - $MARGIN_RIGHT))
PRINTABLEHEIGHT=$(($PAGEHEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM))

echo "DEBUG: printable area is ${PRINTABLEWIDTH}x${PRINTABLEHEIGHT}" >&2

#
# Text spacing
#

TEXTDOTDISTANCE=$(getOptionNumber TextDotDistance)
case "$TEXTDOTDISTANCE" in
  220) TEXTCELLDISTANCE=310 ;;
  250) TEXTCELLDISTANCE=350 ;;
  320) TEXTCELLDISTANCE=525 ;;
  *)
    printf "ERROR: Unknown text dot distance '%s'\n" "$TEXTDOTDISTANCE" >&2
    exit 1
    ;;
esac

TEXTDOTS=$(getOptionNumber TextDots)
LINESPACING=$(getOptionNumber LineSpacing)

# Cell dimension, including spacing
TEXTCELLWIDTH=$(( $TEXTDOTDISTANCE + $TEXTCELLDISTANCE ))
TEXTCELLHEIGHT=$(( $TEXTDOTDISTANCE * ($TEXTDOTS / 2 - 1) + $LINESPACING ))

if [ "$(getOption TopMargin)" = "" ]
then
  # No margin
  TEXTAREAWIDTH=$PRINTABLEWIDTH
  TEXTAREAHEIGHT=$PRINTABLEHEIGHT
else
  # Margins in cells
  TOPMARGIN=$(getOptionNumber TopMargin)
  BOTTOMMARGIN=$(getOptionNumber BottomMargin)
  if [ "$(getOption InnerMargin)" = "" ]
  then
    LEFTMARGIN=$(getOptionNumber LeftMargin)
    RIGHTMARGIN=$(getOptionNumber RightMargin)
    WIDTHMARGIN=$(( $LEFTMARGIN + $RIGHTMARGIN ))
  else
    INNERMARGIN=$(getOptionNumber InnerMargin)
    OUTERMARGIN=$(getOptionNumber OuterMargin)
    WIDTHMARGIN=$(( $INNERMARGIN + $OUTERMARGIN ))
  fi
    
  # Subtract margins from printable area
  TEXTAREAWIDTH=$(( $PRINTABLEWIDTH - $WIDTHMARGIN * $TEXTCELLWIDTH ))
  TEXTAREAHEIGHT=$(( $PRINTABLEHEIGHT - ($TOPMARGIN + $BOTTOMMARGIN) * $TEXTCELLHEIGHT ))
fi

# Compute number of printable cells according to page width and height
TEXTWIDTH=$(( ($TEXTAREAWIDTH + $TEXTCELLDISTANCE) / $TEXTCELLWIDTH  ))
TEXTHEIGHT=$(( ($TEXTAREAHEIGHT + $LINESPACING) / $TEXTCELLHEIGHT ))

#
# Graphic spacing
#

# Compute number of printable cells according to page size
GRAPHICDOTDISTANCE=$(getOptionNumber GraphicDotDistance)

# This is the total area we will send to the embosser
TOTALGRAPHICWIDTH=$(( ( ($PRINTABLEWIDTH - 160) / $GRAPHICDOTDISTANCE ) / 2 * 2 ))
TOTALGRAPHICHEIGHT=$(( ( ($PRINTABLEHEIGHT - 160) / $GRAPHICDOTDISTANCE ) / 4 * 4 ))

echo "DEBUG: total graphical: ${TOTALGRAPHICWIDTH}x${TOTALGRAPHICHEIGHT}" >&2

# This is how many dots we have to introduce to respect at least the software left+top margin
GRAPHICHOFFSET=$(( ($PAGE_LEFT - $MARGIN_LEFT + $GRAPHICDOTDISTANCE - 1) / $GRAPHICDOTDISTANCE ))
GRAPHICVOFFSET=$(( ($PAGE_TOP - $MARGIN_TOP + $GRAPHICDOTDISTANCE - 1) / $GRAPHICDOTDISTANCE ))

echo "DEBUG: graphical offset: ${GRAPHICHOFFSET}x${GRAPHICVOFFSET}" >&2

# This is the resulting actual margin
GRAPHICLEFTMARGIN=$(( $MARGIN_LEFT + $GRAPHICHOFFSET * $GRAPHICDOTDISTANCE ))
GRAPHICTOPMARGIN=$(( $MARGIN_TOP + $GRAPHICVOFFSET * $GRAPHICDOTDISTANCE ))

echo "DEBUG: rounded graphical top-left corner margin: ${GRAPHICLEFTMARGIN}x${GRAPHICTOPMARGIN}" >&2

# Then compute how many dots we can afford until reaching the software right+bottom margin
GRAPHICWIDTH=$(( ( ( $PAGEWIDTH - $GRAPHICLEFTMARGIN - $PAGE_RIGHT ) - 160) / $GRAPHICDOTDISTANCE ))
GRAPHICHEIGHT=$(( ( ( $PAGEHEIGHT - $GRAPHICTOPMARGIN - $PAGE_BOTTOM ) - 160) / $GRAPHICDOTDISTANCE ))

echo "DEBUG: resulting graphical area: ${GRAPHICWIDTH}x${GRAPHICHEIGHT}" >&2

#
# Text translation
#

TABLESDIR=/usr/share/liblouis/tables
echo "DEBUG: Liblouis table directory is $TABLESDIR" >&2
  
getOptionLibLouis () {
  OPTION=$1
  VALUE=$(getOption $OPTION)

  # Check validity of input
  case "$VALUE" in
    [-_.0-9A-Za-z]*) ;;
    *) printf "ERROR: Option $OPTION must be a valid liblouis table name, got '%s'\n" "$VALUE" >&2
       exit 1
       ;;
  esac

  LOCALE=${LANG%@*}
  LOCALE=${LOCALE%.*}
  LANGUAGE=${LOCALE%_*}

  # Check presence of table
  case "$VALUE" in
    None)
      printf None
      ;;
    Locale)
      if [ -f "$TABLESDIR/$LOCALE.tbl" ]
      then
	printf "%s" "$LOCALE.tbl"
      elif [ -f "$TABLESDIR/$LANGUAGE.tbl" ]
      then
	printf "%s" "$LANGUAGE.tbl"
      else
        printf "WARN: Could not find $OPTION table '%s.tbl' or '%s.tbl'\n" "$LOCALE" "$LANGUAGE" >&2
	printf None
      fi
      ;;
    Locale-g[0-3])
      GRADE=${VALUE#Locale-g}
      for i in "$TABLESDIR/$LOCALE.tbl" "$TABLESDIR/$LOCALE"*.tbl "$TABLESDIR/$LANGUAGE.tbl" "$TABLESDIR/$LANGUAGE"*.tbl
      do
	if grep -q "^#+grade:$GRADE$" "$i"
	then
	  printf "%s" "${i//*\/}"
	  exit 0
	fi
      done
      printf "ERROR: Could not find $OPTION table '%s*.tbl' or '%s*.tbl' with grade $GRADE\n" "$LOCALE" "$LANGUAGE" >&2
      printf None
      exit 1
      ;;
    *)
      [ -f "$TABLESDIR/$VALUE".utb ] && VALUE="$VALUE".utb
      [ -f "$TABLESDIR/$VALUE".ctb ] && VALUE="$VALUE".ctb
      if [ ! -f "$TABLESDIR/$VALUE" ]
      then
        printf "ERROR: Could not find $OPTION table '%s'\n" "$VALUE" >&2
        exit 1
      fi

      printf "%s" "$VALUE"
      ;;
  esac
}

LIBLOUIS1=$(getOptionLibLouis LibLouis)
LIBLOUIS2=$(getOptionLibLouis LibLouis2)
LIBLOUIS3=$(getOptionLibLouis LibLouis3)
LIBLOUIS4=$(getOptionLibLouis LibLouis4)

echo "DEBUG: Table1 $LIBLOUIS1" >&2
echo "DEBUG: Table2 $LIBLOUIS2" >&2
echo "DEBUG: Table3 $LIBLOUIS3" >&2
echo "DEBUG: Table4 $LIBLOUIS4" >&2

[ "$LIBLOUIS1" != None ] && LIBLOUIS_TABLES="$LIBLOUIS1"
[ "$LIBLOUIS2" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS2"
[ "$LIBLOUIS3" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS3"
[ "$LIBLOUIS4" != None ] && LIBLOUIS_TABLES="${LIBLOUIS_TABLES:+$LIBLOUIS_TABLES,}$LIBLOUIS4"

#
# Checking for presence of tools
#
checkTool() {
  TOOL=$1
  PACKAGE=$2
  USE=$3
  if ! type $TOOL > /dev/null
  then
    printf "ERROR: The $PACKAGE package is required for $USE\n" >&2
    exit 1
  fi
}
