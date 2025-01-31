��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  �  s  	     S     �   _  M   /  g   }  [   �  P   A	  �   �	  K   
     d
     y
  4   �
     �
     �
     �
              	                                                
                     
Syntax:
   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-01-08 20:36+0200
Last-Translator: Omer Ensari <oensari@gmail.com>
Language-Team: Kurdish <ku@li.org>
Language: ku
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=(n != 1);
X-Poedit-Language: Kurdish
 
Syntax:
   kioclient cat 'url'
            # Naveroka 'url' yê dinivîse di nav stdout de

   kioclient download ['src']
            # URL ya 'src' ji ber digire di cihê dîyar kirî de.
            #   'src' di be ku lîsteya URLyan bibe, heke tune be paşê
            #   URL tê bê xwestin.

   kioclient exec .
             // Peldanka heyî vedike. Pir kêrhatî ye.

   kioclient exec file:/home/weis/data/test.html
             // Pelê bi girêdana standard re vedike

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs dide destpêkirin

   kioclient exec ftp://localhost/
             // Bi URL re pace ya nû vedike

   kioclient move 'src' 'dest'
            # URL yê ji 'src' yê dibe 'dest' ê.
            #   'src' dibe ku lîsteya URLyan bibe.
   kioclient openProperties 'url'
            # Pêşeka taybetiyan vedike

 Argûmanên fermanê Ferman (bibîne --fermanan) Amûra rêzika-ferman ji bo xebatên torê yê zelal URL a hedefê Daxwazkara KIO Fermanên heyî nîşan bide Çavkaniya URL an jî URLyan 