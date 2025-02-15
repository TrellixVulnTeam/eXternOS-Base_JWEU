Þ    '      T  5         `  	   a  X   k  S   Ä  S     S   l  P   À  y     Ê       V  R   ó  e   F  P   ¬  M   ý  X   K	  x   ¤	  H   
  d   f
     Ë
  3   Ú
  1     3   @     t       4   £     Ø  '   è        
   1     <  i   [  6   Å     ü       0   '     X     `     l     p  z  x     ó  K   ÿ  8   K  8     8   ½  O   ö     F  ¦   Î  (  u  U     c   ô  V   X  O   ¯  N   ÿ     N  C   Ö  l          *     !   Á  )   ã                >     ]     j  ,     
   °     »  o   Õ  3   E     y       $        Á     È     Ø  	   ß           %                                               
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
PO-Revision-Date: 2018-12-23 17:43+0800
Last-Translator: pan93412 <pan93412@gmail.com>
Language-Team: Chinese <zh-l10n@linux.org.tw>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.0
Plural-Forms: nplurals=1; plural=0;
 
èªæ³ï¼
             # 'dest' è¥çº "trash:/" åæå°æªæ¡ç§»å°åå¾æ¡¶å§ã
             #  kioclient cp çç­çæ¬ä¹å¯ä½¿ç¨ã
             #  kioclient mv çç­çæ¬ä¹å¯ä½¿ç¨ã
             # kioclient rm çç­çæ¬ä¹å¯ä½¿ç¨ã

   kioclient cat 'url'
            # å° url ç¶²åçå§å®¹å¯«å°æ¨æºè¼¸åº

   kioclient copy 'src' 'dest'
            # å° src è¤è£½å° destã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åçæ¸å®ã
   kioclient download ['src']
            # å° src è¤è£½å°ä½¿ç¨èæå®çä½ç½®ã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åï¼ä½è³å°è¦ä¸åã

   kioclient exec 'url' ['mimetype']
            # ä¾ KDE æå®çæç¨ç¨å¼ä¾åè©¦éå url ææå®çæä»¶ã
            #   å¦æ MIME åæå¯ä»¥èªåæå®ï¼æ¨å¯ä»¥çç¥ mimetype åæ¸ã
            #   URL å¯ä»¥æ¯æä»¶æªåï¼ææ¯ä¸å .desktop æªæå·è¡æªã
   kioclient exec .
             // éåç®åçç®éãéå¸¸æ¹ä¾¿çç¨æ³ã

   kioclient exec file:/home/weis/data/test.html
             // ä»¥é è¨­æç¨ç¨å¼éåè©²æª

   kioclient exec file:/root/Desktop/emacs.desktop
             // éå§å·è¡ emacs

   kioclient exec ftp://localhost/
             // å¨æ°è¦çªéåéç¶²å

   kioclient ls 'url'
            # å°ç®é url çå§å®¹å¯«å°æ¨æºè¼¸åº

   kioclient move 'src' 'dest'
            # å° src ç§»åå° destã
            #   'src' å¯ä»¥æ¯è¨±å¤æªæ¡æç¶²åçæ¸å®ã
   kioclient openProperties 'url'
            # éåå§å®¹é¸å®

   kioclient remove 'url'
            # å°ç¶²åç§»é¤ã
            #   'url' å¯ä»¥æ¯ç¶²åçæ¸å®ã
 *** ç¯ä¾ï¼
 %1ï¼èªæ³é¯èª¤ï¼æ²æè¶³å¤ çåæ¸
 %1ï¼èªæ³é¯èª¤ï¼åæ¸éå¤
 %1ï¼èªæ³é¯èª¤ï¼æªç¥çæä»¤ '%2'
 æä»¤çåæ¸ æä»¤ï¼è«åè --commandsï¼ ç¶²è·¯æä½çå½ä»¤åå·¥å· ç®çç¶²å è¦ä¸è¼æªæ¡çä½ç½® franklin@nospam.goodhorse.idv.tw, Jeff Huang KIO Client Franklin Weng, Jeff Huang éäºåå¼ä½¿ç¨ï¼æ²æè¨æ¯çãå¦ææ¨ä¸æç®ä½¿ç¨åå½¢å¼é£ç·ï¼è«ä½¿ç¨ --platform offscreen è¥ç®æ¨å·²å­å¨åè¦å¯«ï¼è¤è£½æç§»åæï¼ é¡¯ç¤ºå¯ç¨çæä»¤ ä¾æºç¶²å ä½¿ç¨è¨æ¯æ¡åå¶ä»åçéç¥ æä»¤ æªæ¡æç¶²å ç¶²å ç¶²å... 