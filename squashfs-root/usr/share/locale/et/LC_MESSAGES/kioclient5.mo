��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /  |  7     �  ^   �  R     R   r  R   �  Q     �   j  �   �  �  �  J   \  k   �  T     T   h  W   �  �     I   �  i   �     P  *   ^  *   �  (   �     �     �  8        >     G     f  
   y     �  }   �  L         [     |     �     �     �     �           $                                               
   "                    #       &                                   	   !         %                                           
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2016-08-20 01:45+0300
Last-Translator: Marek Laane <qiilaq69@gmail.com>
Language-Team: Estonian <kde-i18n-doc@kde.org>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Süntaks:
             #   'dest' võib olla "trash:/" failide viskamiseks
            #   prügikasti.

             #   kasutada saab ka lühemat
            #   varianti kioclient cp.

             #   kasutada saab ka lühemat
            #   varianti kioclient mv.

             #   kasutada saab ka lühemat
            #   varianti kioclient rm.

   kioclient cat 'url'
            # 'url' sisu kirjutamine standardväljundisse

   kioclient copy 'src' 'dest'
            # Kopeerib URL-i 'src' sihtkohta 'dest'.
            #   'src' võib olla URL-ide nimekiri.
   kioclient download ['src']
            # Kopeerib URL-i 'src' kasutaja määratud asukohta.
            #   'src' võib olla URL-ide nimekiri. Kui seda pole antud,
            #   päritakse URL-i.

   kioclient exec 'url' ['mimetype']
            # Püütakse avada dokument, millele viitab 'url', rakenduses,
            #   mis on KDE-s sellega seostatud. 'mimetype' võib ka andmata jääda.
            #   Sel juhul määratakse MIME tüüp automaatselt. 
            #   URL võib loomulikult olla nii dokumendi URL kui ka
            #   *.desktop-fail.
            #   'url' võib olla ka käivitatav fail.
   kioclient exec .
             // Avab aktiivse kataloogi. Väga mugav.

   kioclient exec file:/home/weis/data/test.html
             // Avab faili vaikimisi seostatud rakenduses

   kioclient exec file:/root/Desktop/emacs.desktop
             // Käivitab emacsi

   kioclient exec ftp://localhost/
             // Avab uue akna määratud URL-iga

   kioclient ls 'url'
            # kataloogi 'url' sisu näitamine standardväljundis

   kioclient move 'src' 'dest'
            # Liigutab URL-i 'src' sihtkohta 'dest'.
            #   'src' võib olla URL-ide nimekiri.
   kioclient openProperties 'url'
            # Omaduste menüü avamine

   kioclient remove 'url'
            # Eemaldab URL-i
            #   'url' võib olla ka URL-ide loend.
 *** Näited:
 %1: süntaksi viga: liiga vähe argumente
 %1: süntaksi viga: liiga palju argumente
 %1: süntaksi viga: tundmatu käsk '%2'
 Käsu argumendid Käsk (vt. --commands) Võrguläbipaistvusega operatsioonide käsureatööriist Siht-URL Failide allalaadimise sihtkoht qiilaq69@gmail.com KIO klient Marek Laane Mitteinteraktiivne kasutamine: teatekastid puuduvad. Kui sa ei soovi graafilist ühendust, kasuta võtit --platform offscreen Sihtmärgi ülekirjutamine, kui see on olemas (kopeerimisel ja liigutamisel) Saadaolevate käskude näitamine Allika URL või URL-id käsk fail või URL URL URL-id 