��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /  �  7     �  a   �  L   X  L   �  N   �  O   A  �   �  �     �    I   �  e   �  Q   D  Q   �  S   �  �   <  H   �  x        �  +   �  +   �  +   �          /  8   H     �     �     �     �     �  p   �  7   K     �  "   �     �     �     �     �           $                                               
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
PO-Revision-Date: 2016-07-11 18:01+0200
Last-Translator: Andrej Mernik <andrejm@ubuntu.si>
Language-Team: Slovenian <lugos-slo@lugos.si>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=4; plural=(n%100==1 ? 1 : n%100==2 ? 2 : n%100==3 || n%100==4 ? 3 : 0);
 
Skladnja:
             # »cilj« je lahko »trash:/«, s čimer datoteke
            # premaknete v Smeti.
             # na voljo je tudi kratka različica
            # kioclient cp
             # na voljo je tudi kratka različica
            # kioclient mv
             # na voljo je tudi kratka različica
            # kioclient rm.

   kioclient cat 'url'
            # Na standardni izpis izpiše vsebino 'url'

   kioclient copy 'izvor' 'cilj'
            # Kopira naslov URL »izvor« v »cilj«.
            # »izvor« je lahko seznam naslovov URL.
   kioclient download ['izvor']
            # Kopira naslov URL »izvor« v uporabniško določeno mesto.
            #   »izvor« je lahko seznam naslovov URL. Če ni podan, se bo
            #   prikazalo pogovorno okno za vnos naslova URL.

   kioclient exec 'url' ['vrsta-mime']
            # Poskuša odpreti dokument podan z »url« v programu,
            # ki je z njim povezan v KDE-ju. »vrsta-mime« lahko izpustite.
            # V tem primeru se vrsta dokumenta ugotovi samodejno.
            # Naslov URL je lahko mesto dokumenta, ali pa datoteka *.desktop.
            # »url« je lahko tudi izvedljiva datoteka.
   kioclient exec .
             // Odpre trenutno mapo. Zelo priročno.

   kioclient exec file:/home/weis/data/test.html
             // Odpre datoteko v privzetem programu

   kioclient exec file:/root/Desktop/emacs.desktop
             // Zažene emacs

   kioclient exec ftp://localhost/
             // Odpre naslov URL v novem oknu

   kioclient ls 'url'
            # Na standardni izpis izpiše vsebino mape 'url'

   kioclient move 'izvor' 'cilj'
            # Premakne naslov URL »izvor« v »cilj«.
            # »izvor« je lahko seznam naslovov URL.
   kioclient openProperties 'url'
            # Odpre meni z lastnostmi

   kioclient remove 'url'
            # Odstrani naslov URL »url«.
            # »url« je lahko seznam naslovov URL.
 *** Primeri:
 %1: skladenjska napaka: premalo argumentov
 %1: skladenjska napaka: preveč argumentov
 %1: skladenjska napaka: neznan ukaz »%2«
 Argumenti ukaza Ukaz (glejte --commands) Orodje ukazne vrstice za omrežno-transparentna opravila Ciljni naslov URL Cilj za prejete datoteke andrejm@ubuntu.si Odjemalec KIO Andrej Mernik Brez vzajemne uporabe: brez oken s sporočili. Če ne želite grafične povezave, uporabite --platform offscreen Prepiše cilj, če obstaja (za kopiranje in premikanje) Prikaži razpoložljive ukaze Izvorni naslov URL ali naslovi URL ukaz datoteka ali naslov URL url naslovi url ... 