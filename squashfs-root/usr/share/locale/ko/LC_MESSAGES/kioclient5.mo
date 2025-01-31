Þ    '      T  5         `  	   a  X   k  S   Ä  S     S   l  P   À  y     Ê       V  R   ó  e   F  P   ¬  M   ý  X   K	  x   ¤	  H   
  d   f
     Ë
  3   Ú
  1     3   @     t       4   £     Ø  '   è        
   1     <  i   [  6   Å     ü       0   '     X     `     l     p  m  x  	   æ  p   ð  W   a  W   ¹  a     V   s     Ê  ñ   X  Y  J  ^   ¤  l     `   p  R   Ñ  r   $       K   %  x   q     ê  1   ÷  +   )  .   U            5   °  
   æ      ñ          #  	   7     A  6   Ù       
   /  5   :     p     x                     %                                               
   "                    $       '                                   	   !         &   #                                       
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
             #   the short version kioclient cp
            #   is also available.

             #   the short version kioclient mv
            #   is also available.

             #   the short version kioclient rm
            #   is also available.

   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient copy 'src' 'dest'
            # Copies the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec 'url' ['mimetype']
            # Tries to open the document pointed to by 'url', in the application
            #   associated with it in KDE. You may omit 'mimetype'.
            #   In this case the mimetype is determined
            #   automatically. Of course URL may be the URL of a
            #   document, or it may be a *.desktop file.
            #   'url' can be an executable, too.
   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient ls 'url'
            # Lists the contents of the directory 'url' to stdout

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 *** Examples:
 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-04-12 00:08+0100
Last-Translator: Shinjo Park <kde@peremen.name>
Language-Team: Korean <kde-kr@kde.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 2.0
 
ë¬¸ë²:
             #   'dest'ì "trash:/"ë¥¼ ì¬ì©íë©´ íì¼ì
            #   í´ì§íµì¼ë¡ ì´ëí©ëë¤.

             #   ì§§ì ë²ì  kioclient cpë¥¼
            #   ì¬ì©í´ë ë©ëë¤.

             #   ì§§ì ë²ì  kioclient mvë¥¼
            #   ì¬ì©í´ë ë©ëë¤.

             #   ë¨ì¶ ëªë ¹ì¼ë¡ kioclient rmì
            #   ì¬ì©í  ì ììµëë¤.

   kioclient cat 'url'
            # 'url'ì ë´ì©ì íì¤ ì¶ë ¥ì¼ë¡ ìëë¤

   kioclient copy 'src' 'dest'
            # URL 'src'ë¥¼ 'dest'ë¡ ë³µì¬í©ëë¤.
            #   'src'ë URL ëª©ë¡ì¼ ì ììµëë¤.
   kioclient download ['src']
            # URL 'src'ë¥¼ ì¬ì©ìê° ì§ì í ìì¹ì ë³µì¬í©ëë¤.
            #   'src'ë URLì ëª©ë¡ì¼ ì ìì¼ë©°, ì§ì íì§ ìì ê²½ì°
            #   ì¬ì©ììê² ë¬¼ì´ ë´ëë¤.

   kioclient exec 'url' ['mimetype']
            # 'url'ì´ ê°ë¦¬í¤ë ë¬¸ìë¥¼ KDEì ì°ê²°ë íë¡ê·¸ë¨ì¼ë¡
            #   ì½ëë¤. 'mimetype'ì ìëµí  ì ìì¼ë©°, ì´ ê²½ì°
            #   MIME íìì ìëì¼ë¡ ì¶ì¸¡ë©ëë¤. URLì ë¬¸ìë¥¼ 
            #   ê°ë¦¬í¤ê±°ë, *.desktop íì¼ì¼ ì ììµëë¤.
   kioclient exec .
             // íì¬ ëë í°ë¦¬ë¥¼ ì½ëë¤. ë§¤ì° í¸ë¦¬í©ëë¤.

   kioclient exec file:/home/weis/data/test.html
             // ê¸°ë³¸ ë°ì¸ë©ì¼ë¡ íì¼ì ì½ëë¤

   kioclient exec file:/root/Desktop/emacs.desktop
             // ì´ë§¥ì¤ë¥¼ ììí©ëë¤

   kioclient exec ftp://localhost/
             // URLì ì ì°½ì¼ë¡ ì½ëë¤

   kioclient ls 'url'
            # 'url'ì´ ê°ë¦¬í¤ë ëë í°ë¦¬ì ë´ì©ì íì¤ ì¶ë ¥ì¼ë¡ ìëë¤

   kioclient move 'src' 'dest'
            # URL 'src'ë¥¼ 'dest'ë¡ ì´ëí©ëë¤.
            #   'src'ë URL ëª©ë¡ì¼ ì ììµëë¤.
   kioclient openProperties 'url'
            # ìì± ë©ë´ë¥¼ ì½ëë¤

   kioclient remove 'url'
            # URLì ì­ì í©ëë¤.
            #   'url'ì URL ëª©ë¡ì¼ ì ììµëë¤.
 *** ìì :
 %1: ë¬¸ë² ì¤ë¥: ì¸ìê° ì¶©ë¶íì§ ìì
 %1: ë¬¸ë² ì¤ë¥: ì¸ìê° ëë¬´ ë§ì
 %1: ë¬¸ë² ì¤ë¥: ì ì ìë ëªë ¹ '%2'
 ëªë ¹ì ì¸ì ëªë ¹ (--commands ì°¸ê³ ) ë¤í¸ìí¬ í¬ëª ììì ìí ëªë ¹í ëêµ¬ ëì URL íì¼ì ë¤ì´ë¡ëí  ìì¹ kde@peremen.name KIO í´ë¼ì´ì¸í¸ ë°ì ì¡° ëíì ëª¨ë ì¬ì©íì§ ìê¸°: ë©ìì§ ìì ìì. ê·¸ëí½ ì°ê²°ì ì¬ì©íì§ ìì¼ë ¤ë©´ --platform offscreenì ì¬ì©íì­ìì¤ ëìì´ ì¡´ì¬íë©´ ë®ì´ì°ê¸° (ë³µì¬ì ì´ë) ì¬ì© ê°ë¥í ëªë ¹ ë³´ê¸° ìë³¸ URL ë©ìì§ ììì ë¤ë¥¸ ë¤ì´í°ë¸ ìë¦¼ ì¬ì© command íì¼ ë° URL url urls... 