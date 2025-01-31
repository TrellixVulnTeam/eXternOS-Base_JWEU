��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  u  x  
   �  s   �  V   m  W   �  R     Z   o  �   �    k  �  ~  F   v  s   �  g   1  ]   �  T   �  �   L  R   �  |   C     �  '   �  %   �  0         Q     j  9   �     �  0   �       
        (  p   8  J   �     �       9   %     _     h     }     �           %                                               
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-12-22 10:03+0100
Last-Translator: Freek de Kruijf <freekdekruijf@kde.nl>
Language-Team: Dutch <kde-i18n-nl@kde.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 
Gebruik:
             #   'bestemming' mag "trash:/" zijn om de bestanden naar
            #   de prullenbak te verplaatsen.
             #   de korte versie van kioclient cp
            #   is ook beschikbaar.

             #   'de korte versie van kioclient mv
            #   is ook beschikbaar.

             #   de korte versie kioclient rm
            #   is ook beschikbaar.

   kioclient cat 'URL-adres'
            # Schrijft de inhoud van 'URL-adres' naar stdout

   kioclient copy 'bron' 'bestemming'
            # kopieert het URL-adres 'bron' naar 'bestemming'.
            #   'bron' mag een lijst van URL-adressen zijn.
   kioclient download ['bron']
            # kopieert het URL-adres 'bron' naar een door de gebruiker
            #   opgegeven locatie.
            #   'bron' mag een lijst van URL-adressen zijn. Indien niet
            #   gegeven zal er om een URL-adres worden gevraagd.

   kioclient exec 'URL-adres' ['mime-bestandstype']
            #   probeert het document waarnaar 'URL-adres' wijst te 
            #   openen in het programma dat ermee is geassocieerd 
            #   in KDE. U mag 'mime-bestandstype' weglaten.
            #   In dat geval wordt het mime-bestandstype automatisch
            #   bepaald. Uiteraard mag URL-adres het adres van een
            #   document zijn of een *.desktop-bestand.
            #   URL-adres mag ook een uitvoerbaar bestand zijn.
   kioclient exec .
             // opent de huidige map. Erg handig.

   kioclient exec file:/home/gebruiker/data/test.html
             // opent het bestand met de standaardassociatie

   kioclient exec file:/home/gebruiker/Desktop/emacs.desktop
             // start het programma Emacs

   kioclient exec ftp://localhost/
             // opent een nieuw venster met het URL-adres

   kioclient ls 'url'
            # Schrijft de inhoud van de map 'url' naar stdout

    kioclient move 'bron' 'bestemming'
            # verplaatst het URL-adres 'bron' naar 'bestemming'.
            #   'bron' mag een lijst van URL-adressen zijn.
   kioclient openProperties 'URL-adres'
            # Opent een eigenschappenmenu

    kioclient remove 'url'
            # verwijdert het URL-adres
            #   'url' mag een lijst van URL-adressen zijn.
 *** Voorbeelden:
 %1: Syntaxisfout: te weinig argumenten
 %1: Syntaxisfout: te veel argumenten
 %1: Syntaxisfout: '%2' is een onbekend commando
 Argumenten voor commando Commando (zie --commands) Commandoregelprogramma voor netwerktransparante operaties URL-adres van bestemming Bestemming waar vanaf de bestanden te downloaden freekdekruijf@kde.nl KIO Client Freek de Kruijf Niet-interactief gebruik: geen berichtvelden. Als u geen grafische verbinding wilt, gebruik --platform offscreen Bestemming overschrijven als deze bestaat (voor kopiëren en verplaatsten) Beschikbare commando's tonen Bron-URL-adres(sen) Berichtvelden en andere gebruikelijke meldingen gebruiken commando Bestand of URL-adres url URL's... 