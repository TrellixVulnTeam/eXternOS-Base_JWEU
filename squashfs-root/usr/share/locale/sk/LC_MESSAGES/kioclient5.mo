��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x  	     Z     U   s  U   �  U     R   u  z   �  �   C  �  &  R     k   i  Q   �  L   '  [   t  x   �  M   I  k   �       )     -   =  )   k     �     �  D   �     
          6  
   J     U  p   d  8   �          +  5   9     o     w     �     �           %                                               
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
PO-Revision-Date: 2018-12-27 19:12+0100
Last-Translator: Mthw <jari_45@hotmail.com>
Language-Team: Slovak <kde-i18n-doc@kde.org>
Language: sk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.0
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
 
Syntax:
             #   'dest' môže byť "trash:/" na presun súborov
            #   do koša.
             #   krátka verzia kioclient cp
            #   je tiež k dispozícii.

             #   krátka verzia kioclient mv
            #   je tiež k dispozícii.

             #   krátka verzia kioclient rm
            #   je tiež k dispozícii.

   kioclient cat 'url'
            # Vypíše obsah 'url' na štandardný výstup

   kioclient copy 'src' 'dest'
            # Skopíruje URL 'src' do 'dest'.
            #   'src' môže byť zoznam URL.
   kioclient download ['src']
            # Skopíruje URL 'src' do užívateľom zadanej lokácie'.
            #   'src' môže byť zoznam URL, ak nie je zadané, tak
            #   bude zobrazená výzva na jeho zadanie.

   kioclient exec 'url' ['mimetype']
            # Pokúsi sa otvoriť dokument, na ktorý odkazuje 'url', v aplikácii,
            #   ktorá je s ním asociovaná v KDE. Môžete vynechať 'mimetype'.
            #   V takom prípade bude mimetype nastavený
            #   automaticky. Samozrejme URL môže byť URL
            #   dokumentu alebo to môže byť súbor *.desktop.
            #   document, or it may be a *.desktop file.
            #   'url' môže byť aj spustiteľné.
   kioclient exec .
             // Otvorí aktuálny adresár. Veľmi šikovné.

   kioclient exec file:/home/weis/data/test.html
             // Otvorí súbor prednastavenou aplikáciou

   kioclient exec file:/root/Desktop/emacs.desktop
             // Spustí emacs

   kioclient exec ftp://localhost/
             // Otvorí URL v novom okne

   kioclient ls 'url'
            # Vypíše obsah adresára 'url' na štandardný výstup

   kioclient move 'src' 'dest'
            # Presunie URL 'src' do 'dest'.
            #   'src' môže byť zoznam URL.
   kioclient openProperties 'url'
            # Otvorí menu s vlastnosťami

   kioclient remove 'src' 'dest'
            # Odstráni URL.
            #   'url' môže byť zoznam URL.
 *** Príklady:
 %1: Chyba syntaxe, nedostatok parametrov
 %1: Chyba syntaxe, príliš veľa parametrov
 %1: Chyba syntaxe, neznámy príkaz '%2'
 Parametre pre command Príkaz (viď --commands) Nástroj pre príkazový riadok na sieťovo transparentné operácia Cieľové URL Cieľ, kam sťahovať súbory wizzardsk@gmail.com KIO klient Roman Paholík Neinteraktívne použitie: žiadne okná správ. Ak nechcete grafické pripojenie, použite --platform offscreen Prepísať cieľ ak existuje (pre kopírovanie a presun) Zobraziť dostupné príkazy Zdrojové URL Používať polia správ a iné natívne notifikácie príkaz súbor alebo URL url url... 