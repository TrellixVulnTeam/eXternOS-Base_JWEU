��          �   %   �      0  	   1  X   ;  S   �  S   �  P   <  y   �  �     �  �  R   o  e   �  P   (  M   y  x   �  H   @  d   �     �     	  4   	     R	  
   b	  6   m	     �	     �	  z  �	  
   J  m   U  P   �  P     Q   e  �   �    ]  �  s  P   "  q   s  f   �  [   L  �   �  R   M     �           8  ;   T     �     �  ?   �     �               
                                                                                             	                         
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2010-07-16 11:58+0100
Last-Translator: Berend Ytsma <berendy@gmail.com>
Language-Team: Frysk <kde-i18n-fry@kde.org>
Language: fy
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=n != 1;
 
Gebrûk:
             #   'bestimming' mei "trash:/" wêze om triemmen te
            #   ferpleatsen nei it jiskefet.
             #   de koarte ferzje kioclient mv
            #   is ek beskikber.

             #   de koarte ferzje kioclient rm
            #   is ek beskikber.

   kioclient openProperties 'URL-adres'
            # Iepenet in eigenskipenmenu

   kioclient copy 'boarne' 'bestemming'
            # Kopiearret it URL-adres 'boarne' nei 'bestimming'.
            #   'boarne' mei in list fan URL-adressen wêze.
   kioclient download ['bron']
            # kopiearret it URL-adres 'boarne' nei ien fan de troch de brûkers
            #   oantsjutte lokaasje.
            #   'boarne' mei in list fan URL-adressen wêze. As neat
            #   opjûn sil der om in URL-adres frege wurde.

   kioclient exec 'URL-adres' ['mime-triemtype']
            #   besiket it dokumint wêrnei 'URL-adres' ferwiist te 
            #   iepenjen yn it programma dat dermei assosearre is 
            #   yn KDE. Jo mije 'mime-triemtype' fuortlitte.
            #   Yn dat gefal wudt it mime-triemtype automatysk
            #   beskied. Natuerlik mei URL-adres it adres fan in
            #    dokumint wêze of in *.desktop-bestand.
   kioclient exec .
             // iepenet de aktive triemtafel. Hiel hannich.

   kioclient exec file:/home/gebruiker/data/test.html
             // iepenet de triem mei de standertassosaasje

   kioclient exec file:/home/gebruiker/Desktop/emacs.desktop
             // start it programma Emacs

   kioclient exec ftp://localhost/
             // iepenet in nij finster mei it URL-adres

    kioclient move 'bron' 'bestemming'
            # ferpleatst it URL-adres 'boarne' nei 'bestimming'.
            #   'boarne' mei in list fan URL-adressen wêze.
   kioclient openProperties 'URL-adres'
            # Iepenet in eigenskippenmenu

    kioclient wisket 'url-adres'
            # Wisket it URL-adres
            #   'boarne' mei in list fan URL-adressen wêze.
 Arguminten foar command Kommando (sjoch --commands) Kommandorigelprogramma foar netwerktrochsichtige operaasjes Bestimming URL-adres KIO kliïnt Bestimming oerskriuwe as it bestiet (foar kopy of ferpleatsing) Beskikbere kommando's werjaan Boarne URL-adres of URL-adressen 