��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x  	   �  s     S   x  S   �  S      c   t  �   �  �   �  �  {  ^   Q  n   �  R     ^   r  ^   �  �   0  X   �  �   @     �  %   �  %     .   ,     [     q  A   �     �  '   �       
        !  �   0  F   �     �       A   )     k     r     �     �           %                                               
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
PO-Revision-Date: 2019-08-06 21:01+0200
Last-Translator: Burkhard Lück <lueck@hube-lueck.de>
Language-Team: German <kde-i18n-de@kde.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 18.12.3
 
Syntax:
             #   „ziel“ kann z. B.  „trash:/“ sein, um Dateien in den
            #   Papierkorb zu werfen.
             #   die Kurzfassung kioclient cp
            #   ist auch verfügbar.

             #   die Kurzfassung kioclient mv
            #   ist auch verfügbar.

             #   die Kurzfassung kioclient rm
            #   ist auch verfügbar.

   kioclient cat „adresse“
            # Gibt den Inhalt der Adresse „url“ nach stdout aus

   kioclient copy „quelle“ „ziel“
            # Kopiert „quelle“ nach „ziel“,
            #   wobei „quelle“ auch eine Liste von Adressen sein kann.
   kioclient download ['quelle']
            # Kopiert die Adresse „quelle“ an einen benutzerdefinierten Ort.
            #   „quelle“ kann auch eine Liste von Adressen sein. Ist keine
            #   Adresse angegeben, so wird sie erfragt.

   kioclient exec „url“ ['mimetype']
            # Versucht, das Dokument unter „url“ mit der in KDE zugewiesenen
            #    Anwendung zu öffnen. „mimetype“ kann dabei ausgelassen werden.
            #   In dem Fall wird der Mimetyp automatisch ermittelt.
            #   Die Adresse kann eine Adresse für ein Dokument oder eine
            #   *.desktop-Datei sein.
            #   Bei „url“ kann es sich auch um eine ausführbare Datei handeln
   kioclient exec .
             // Öffnet den aktuellen Arbeitsordner – sehr komfortabel.

   kioclient exec file:/home/weis/data/test.html
             // Öffnet die Datei mit der Standardanwendung.

   kioclient exec file:/root/Desktop/emacs.desktop
             // Startet emacs.

   kioclient exec ftp://localhost/
             // Öffnet ein neues Fenster mit der Adresse.

   kioclient ls „url“
            # Gibt den Inhalt des Ordners „url“ nach stdout aus

   kioclient move „quelle“ „ziel“
            # Verschiebt die Adresse „quelle“ nach „ziel“,
            #   wobei „quelle“ auch eine Liste von Quellen sein kann.
   kioclient openProperties „adresse“
            # Öffnet ein Eigenschaften-Menü

   kioclient remove „adresse“
            # Löscht die Adresse
            #   wobei „adresse“ auch eine Liste von Adressen sein kann.
 *** Beispiele:
 %1: Syntaxfehler, zu wenig Argumente
 %1: Syntaxfehler, zu viele Argumente
 %1: Syntaxfehler: Unbekannter Befehl „%2“
 Argumente für Befehl Befehl (siehe --commands) Befehlszeilenprogramm für netzwerk-transparente Arbeitsvorgänge Ziel-Adresse Ziel für die heruntergeladenen Dateien lueck@hube-lueck.de KIO-Client Burkhard Lück Nicht interaktive Anwendung: keine Meldungsfenster. Möchten Sie eine grafische Verbindung, benutzen Sie „--platform offscreen“ Ziel überschreiben, wenn es existiert (für Kopieren und Verschieben) Verfügbare Befehle anzeigen Quell-Adresse(n) Nachrichtenfenster und andere native Benachrichtigungen verwenden Befehl Datei oder Adresse URL URLs ... 