Þ          ì   %   ¼      P  	   Q  X   [  S   ´  S     S   \  P   °  y     Ê   {    F  R   ã  e   6  P     M   í  X   ;  x     H   	  d   V	     »	     Ñ	  4   ê	     
  
   /
  6   :
     q
     
    
  .   +  ®   Z     	          (  i   »  «   %    Ñ  ä  g  ª   L  ¼   ÷     ´     4  ~   Æ  ¦   E  |   ì     i  W   ê  8   B  £   {       +   3  ¿   _  N        n                                                        	                                            
                         
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2012-07-11 09:42+0700
Last-Translator: Khoem Sokhem <khoemsokhem@khmeros.info>
Language-Team: Khmer <support@khmeros.info>
Language: km
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: KBabel 1.11.4
X-Language: km-CM
 
áá¶áááâáááááááÂ á
             #   'dest' á¢á¶áâáá¶ "trash:/" áá¾áááá¸âáááá¶áááá¸âá¯ááá¶á
            #   ááâáá»áâáááá¶áÂ á
             #   ááááâáááá¸âáááá kioclient cp
            #   á¢á¶áâáááá¾âáá¶áâááá á

             #   ááááâáááá¸âáááá kioclient mv
            #   á¢á¶áâáááá¾âáá¶áâáááÂ á

             #   ááááâáááá¸âáááá kioclient rm
            #   ááâá¢á¶áâáááá¾áá¶ááááÂ á

   kioclient cat 'url'
            # áááááâáá¶áá·áá¶âáááá 'url' to stdout

   kioclient copy 'src' 'dest'
            # áááááâ URL 'src' áá 'dest'.
            #   'src' á¢á¶áâáá¶âááááá¸âáááá URLÂ á
   kioclient download ['src']
            # ááááá URL 'src' ááâáá¸áá¶ááâááááá¶áâááááá¶ááâáááâá¢ááááááá¾'Â á
            #   'src' á¢á¶áâáá¶âááááá¸ URL ááááá·áâáá¾âáá·ááá¶á ááááá¶áááá
            #   URL áá¹áâáááá¼ááá¶áâáááá¾Â á

   kioclient exec 'url' ['mimetype']
            # áááá¶áá¶áâáá¾áâá¯ááá¶áâááááá¶áâáááá¢á»ááááá á¶áâááá 'url' áááá»áâáááááá·áá¸
            #   áááâáá¶ááááâáá¹áâáá¶âáááááá»á KDEÂ á á¢áááâá¢á¶áâáá»á 'áááááá mime' áá¶áÂ á
            #   áááá»áâáááá¸ááá áááááá mime ááºâáááá¼ááá¶áááááá
            #   áááâááááááááááááá·Â á URL ááºâáá¶ URL áááá
            #   á¯ááá¶á á¬âáá¶âá¢á¶áâáá¶âá¯ááá¶á *.desktopÂ á
   kioclient ááááá·ááááá·Â á
             // áá¾áâááâááááá»ááááááÂ á áá¶ááááá½áâáá¶ááÂ á

   kioclient ááááá·ááááá· file:/home/weis/data/test.html
             // áá¾áâá¯ááá¶áâááááá¶áâáá¶áâááâáááá¶ááá¾á

   kioclient ááááá·ááááá· file:/root/Desktop/emacs.desktop
             // áá¶áááááá¾á emacs

   kioclient ááááá·ááááá· ftp://localhost/
             // áá¾áâáááá¢á½ááááá¸âááááá¶á URL

   kioclient ls 'url'
            # áá¶áâáá¶áá·áá¶ââááááâááâ 'url' ááâáá stdout

   kioclient move 'src' 'dest'
            # áááá¶áááá¸ URL 'src' áá 'dest'Â á
            #   'src' á¢á¶áâáá¶âááááá¸ URLÂ á
   kioclient openProperties 'url'
            # áá¾áâáááºáá»áâáááááááááááááá·

   kioclient remove 'url'
            # ááâ URL ááá
            #   'url' á¢á¶ááá¶âááááá¸ URLÂ á
 á¢á¶áá»áááááâááááá¶ááâáá¶áááâááááá¶ áá¶áááâááááá¶ (áá¾á --commands) á§áááááâááááá¶ááâáá¶áááâááááá¶ ááááá¶ááâááááá·ááááá·áá¶áâááááá¶á URL áá·ááá ááá¶ááá¸áâááááá KIO áááááâáá¶áááá¾âáá·ááá ááááá·ááá¾âáá¶âáá¶á (ááááá¶ááâáá¶áâááááá áá·áâáááá¶áááá¸) áááá á¶áâáá¶áááâááááá¶âáááâáá¶á URL ááááá 