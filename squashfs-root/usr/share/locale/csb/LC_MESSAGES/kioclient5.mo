��          �      �        	   	  X     S   l  S   �  P     y   e  �   �  �  �  R   G  e   �  P      M   Q  x   �  H     d   a     �     �  4   �     *	  
   :	     E	     ]	  �  p	     3  e   ?  S   �  X   �  R   R  �   �  �   /  l  %  T   �  g   �  U   O  X   �  �   �  K   �  o   �     >     X  F   t     �  
   �  !   �     �               
         	                                                                                
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
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

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-12-17 22:57+0100
Last-Translator: Mark Kwidzińśczi <mark@linuxcsb.org>
Language-Team: Kaszëbsczi <i18n-csb@linuxcsb.org>
Language: csb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.0
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
 
Syntaksa:
             #   célã mòże bëc n.p. "trash:/" abë przesënąc lopczi
            #   do kòsza.
             #   krótkô wersëjô kioclient mv
            #   je przëstãpnô.

             #   krótkô wersëjô kioclient rm
            #   je téż przëstspnô.

   kioclient cat 'url'
            # Zapisëjë zamkłosc adresë 'url' do stdout

   kioclient copy 'zdrój' 'cél'
            # Kòpérëjë 'zdrój' do 'célu'.
            #   'zdrój' mòże bëc lëstą adresów.

   kioclient download ['src']
            # Kòpérëjë adresã 'src' do môla pòdónégò przez brëkòwnika.
            #   'src' móże bëc lëstą adresów, a jeżlë nie je pòdóny
            #   to programa zapëta ò nen argùment.

   kioclient exec 'url' ['mimetype']
            # Próbùjë òtemknąc dokùment wskazóny bez adresã 'url' w aplikacëji
            #   zrzëszony z nim z KDE. Mòżesz òminąc 'mimetype'.
            #   W taczim przëtrôfkù ôrt mimë je aùtomatno
            #   sprôwdzóny. Adresa mòże bëc adresą
            #   dokùmentu abò lopkã .desktop.
   kioclient exec .
             // Òtmëkô biéżny katalog. Barô brëkòwné..

   kioclient exec file:/home/weis/data/test.html
             // Òtmëmkô lopk w domëslny programie

   kioclient exec file:/root/Desktop/emacs.desktop
             // Startëjë emacsa

   kioclient exec ftp://localhost/
             // Òtmëmkô nowé òkno z adresą URL

   kioclient move 'src' 'dest'
            # Przenoszi adresã 'src' do 'dest'.
            #   'src' mòże bëc lëstą adersów.
   kioclient openProperties 'url'
            # Òtmëkô menu swòjiznów

   kioclient remove 'url'
            # Rëmô adresã URL.
            #   'url' mòże bëc lëstą adresów.
 Argùmentë dlô pòlétu Pòlét (zdrzë --commands) Nôrzãdze rézë pòlétów dlô przezérnych sécowich òperacëjów Docélowy url Klient KIO Pòkażë przëstãpné pòlétë Zdrój url abò url-i 