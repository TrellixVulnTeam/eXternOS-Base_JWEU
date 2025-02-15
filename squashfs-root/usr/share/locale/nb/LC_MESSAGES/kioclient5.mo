��    %      D  5   l      @  	   A  X   K  S   �  S   �  S   L  P   �  y   �  �   k  �  6  R   �  e   &  P   �  M   �  X   +	  x   �	  H   �	  d   F
  3   �
  1   �
  3        E     [  4   t     �  '   �      �  
          i   ,  6   �     �     �     �                  �    
   �  b   �  L   b  L   �  L   �  M   I  �   �  �     �  �  M   �  b   �  Q   =  M   �  W   �  �   5  H   �  n     $   v  &   �  (   �     �       7        T      ]     ~  
   �     �  s   �  7   -     e     �     �     �     �     �           #                                               
   !                    "       %                                    	             $                                          
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
 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2014-04-25 18:46+0200
Last-Translator: Bjørn Steensrud <bjornst@skogkatt.homelinux.org>
Language-Team: Norwegian Bokmål <i18n-nb@lister.ping.uio.no>
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Syntaks:
             #   'dest' kan være «trash:/» for å flytte filer
            #   til papirkurven.
             #  kortversjonen kioclient cp
            #  kan også brukes.

             #  kortversjonen kioclient mv
            #  kan også brukes.

             #  kortversjonen kioclient rm
            #  kan også brukes.

   kioclient cat 'url'
            # Skriver innholdet av «url» til stdout

   kioclient copy 'fra' 'til'
            # Kopierer   URL-en 'fra' til 'til'.
            #   'fra' kan være en liste over URL-er.
   kioclient download ['src']
            # Kopierer URL-en «src» til en oppgitt adresse.
            #   «src» kan være en liste over URL-er. hvis ikke
            #   oppgitt blir det spurt etter en.

   kioclient exec 'url' ['mimetype']
            # Forsøker å åpne dokumentet som «url» peker på med programmet
            #   som KDE har tilordnet det. «mimetype» kan utelates.
            #   I så fall blir mimetypen bestemt automatisk
            #   URL-en kan naturligvis være URL til et dokument, eller til
            #   en *.desktop-fil.
            #   «url» kan også være en kjørbar fil.
   kioclient exec .
             // Åpner gjeldende mappe. Svært praktisk.

   kioclient exec file:/home/weis/data/test.html
             // Åpner fila med standard binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starter emacs

   kioclient exec ftp://localhost/
             // Åpner nytt vindu med URL

   kioclient ls 'url'
            # Skriver innholdsliste for mappa «url» til stdout

   kioclient move 'src' 'dest'
            # Flytter URL-en  «src» to «dest».
            #   «src» kan være en list over URL-er.
   kioclient openProperties 'url'
            # Åpner en egenskapsmeny

   kioclient remove 'url'
            # Fjerner URL-en.
            #   «url» kan være en list over URL-er.
 %1: Syntaksfeil, for få argumenter
 %1: Syntaksfeil, for mange argumenter
 %1: Syntaksfeil, ukjent kommando «%2»
 Argumenter for kommando Kommando (se --commands) Kommandolinjeverktøy for handlinger gjennom nettverket Mål-URL Målet dit filer skal lastes ned bjornst@skogkatt.homelinux.org KIO klient Bjørn Steensrud Ikke-interaktiv bruk: ingen meldingsbokser. Hvis du ikke vl ha en grafisk tilkobling, så bruk --platform offscreen Skriv over målet hvis det finnes (for kopier og flytt) Vis tilgjengelige kommandoer Kilde-URL eller URL-er kommando fil eller URL url url-er … 