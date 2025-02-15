��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x  
   M  c   X  U   �  U     U   h  Y   �  �     �   �  j  �  L     c   X  R   �  X     Z   h  �   �  O   Z  w   �     "  "   1  $   T  (   y     �     �  ;   �       &        F  
   V     a  y   u  ;   �     +     H  9   Y     �     �     �     �           %                                               
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
PO-Revision-Date: 2019-01-05 12:49+0100
Last-Translator: Karl Ove Hufthammer <karl@huftis.org>
Language-Team: Norwegian Nynorsk <i18n-nn@lister.ping.uio.no>
Language: nn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 19.03.70
Plural-Forms: nplurals=2; plural=n != 1;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Syntaks:
             #   «mål» kan vera «trash:/» for å flytta filene
            #   til papirkorga.
             #   kortversjonen «kioclient cp»
            #   er òg tilgjengeleg.

             #   kortversjonen «kioclient mv»
            #   er òg tilgjengeleg.

             #   kortversjonen «kioclient rm»
            #   er òg tilgjengeleg.

   kioclient cat «adresse»
            # Skriv innhaldet i «adresse» til standard ut

   kioclient copy «kjelde» «mål»
            # Kopierer adressa «kjelde» til «mål».
            # «kjelde» kan vera ei liste over adresser.
   kioclient download [«kjelde»]
            # Kopierer adressa «kjelde» til ein brukarvald stad.
            #   «kjelde» kan vera ei liste over adresser, og viss
            #   argumentet er utelate, vert det spurd om ei adresse.

   kioclient exec «adresse» [«MIME-type»]
            # Prøver å opna dokumentet som «adresse» peikar til i
            # programmet som er knytt til filtypen i KDE. Du kan òg
            # utelata MIME-typen. Då vert vert han fastsett automatisk.
            # Adressa kan vera ei nettadresse, ei lokal adresse eller
            # ei «.desktop»-fil.
   kioclient exec .
             // Opnar gjeldande mappe. Veldig praktisk.

   kioclient exec file:/home/weis/data/test.html
             // Opnar fila med standardbindingar.

   kioclient exec file:/root/Desktop/emacs.desktop
             // Startar emacs.

   kioclient exec ftp://localhost/
             // Opnar eit nytt vindauge med adressa.

   kioclient cat '«adresse»
            # Skriv innhaldet i «adresse» til standard ut

   kioclient move «kjelde» «mål»
            # Flyttar adressa «kjelde» til «mål».
            # «kjelde» kan vera ei liste over adresser.
   kioclient openProperties «adresse»
            # Opnar ein eigenskapsmeny

   kioclient remove «adresse»
            # Fjern adressa.
            # «adresse» kan vera ei liste over adresser.
 *** Eksempel:
 %1: Syntaksfeil: for få argument
 %1: Syntaksfeil: for mange argument
 %1: Syntaksfeil: ukjend kommando «%2»
 Argument til kommando Kommando (sjå «--commands») Kommandolinjeverktøy for nettverkstransparente operasjonar Måladresse Målet der filene skal lastast ned til karl@huftis.org KIO-klient Karl Ove Hufthammer Ikkje-interaktiv bruk: ingen meldingsvindauge. Viss du ikkje vil ha ei grafisk tilkopling, bruk «--platform offscreen». Overskriv målet viss det finst (for kopiering og flytting) Vis tilgjengelege kommandoar Kjeldeadresse(r) Bruk meldingsvindauge og andre innebygde varslingsmetodar kommando fil eller adresse adresse adresser … 