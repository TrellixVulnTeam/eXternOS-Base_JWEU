��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x       h     T   |  T   �  T   &  U   {  �   �  �   n  �  Z  V     p   e  W   �  Q   .  t   �  �   �  S   �  n   �     V  3   f  '   �  ,   �     �       5   #     Y     h  8   �     �  Q   �  o     L   �     �     �  ;        L     U     g  	   k           %                                               
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kde-cli-tools
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-06-08 08:38+0100
Last-Translator: Iñigo Salvador Azurmendi <xalba@euskalnet.net>
Language-Team: Basque <kde-i18n-eu@kde.org>
Language: eu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=(n != 1);
 
Sintaxia:
             #   'Helburua' "trash:/" izan daiteke, fitxategiak
            #   zakarrontzira eramateko.
             #   kioclient cp bertsio laburra
            #   ere erabilgarri dago.

             #   kioclient mv bertsio laburra
            #   ere erabilgarri dago.

             #   kioclient rm bertsio laburra
            #   ere erabilgarri dago.

   kioclient cat 'url'
            # 'url'-ko edukia irteera estandarrean idazten du

   kioclient copy 'jatorria' 'jomuga'
            # 'jatorriko' URLa 'helburukora' kopiatzen du.
            #   'jatorria' URLen zerrenda bat izan daiteke.
   kioclient download ['jatorria']
            # 'Jatorriko' URLa erabiltzaileak zehaztutako kokaleku batera kopiatzen du.
            #   'Jatorria' URLen zerrenda bat izan daiteke; han ez badago,
            #   URL bat eskatuko da.

   kioclient exec 'url' ['mimemota']
            # Saiatzen da 'url'ak adierazten duen dokumentua
            #   KDErekin erlazionatutako aplikazioan irekitzen. 'mime mota' jartzea ez da nahitaezkoa.
            #   Kasu honetan, mime mota automatikoki
            #   ezartzen da. Jakina, URLa dokumentu baten
            #   URLa izan daiteke, edo *.desktop fitxategi bat.
            #   'url', halaber, exekutagarria izan daiteke.
   kioclient exec .
             // Uneko direktorioa irekitzen du. Oso erabilgarria.

   kioclient exec file:/home/weis/data/test.html
             // Fitxategia irekitzen du lotura lehenetsiarekin

   kioclient exec file:/root/Desktop/emacs.desktop
             // Emacs abiarazten du

   kioclient exec ftp://localhost/
             // Leihoa irekitzen du URLarekin

   kioclient ls 'url'
            # Direktorioaren 'url'-ko edukiak irteera estandarrean (stdout) zerrendatzen ditu

   kioclient move 'jatorria' 'helburua'
            # 'Jatorriko' URLa 'helburukora' eramaten du.
            #   'Jatorria' URLen zerrenda bat izan daiteke.
   kioclient openProperties 'url'
            # Propietateen menu bat irekitzen du

   kioclient remove 'url'
            # URLa kentzen du
            #   URLen zerrenda bat izan daiteke 'url'.
 *** Adibideak:
 %1: Sintaxi errorea, ez dago behar adina argumentu
 %1: Sintaxi errorea, argumentu gehiegi
 %1: Sintaxi errorea, '%2' komando ezezaguna
 Komandoaren argumentuak Komandoa (ikusi --commands) Sareko eragiketa gardenetarako komando-lerroko tresna Helburuko URLa Fitxategiak jaisteko jomuga marcos@euskalgnu.org,xalba@euskalnet.net,hizpol@ej-gv.es KIO bezeroa Marcos Goyeneche,Iñigo Salvador Azurmendi,Hizkuntza Politikarako Sailburuordetza Erabilera ez-elkarreragilea: mezu-koadrorik ez. Konexio grafikorik ez baduzu nahi, erabili --platform offscreen Gainidatzi helburua, lehendik baldin badago (kopiatzeko eta lekuz aldatzeko) Erakutsi komando erabilgarriak Jatorriko URLa edo URLak Erabili mezu-koadroak eta beste berezko jakinarazpen batzuk komandoa fitxategi edo URL url url-ak... 