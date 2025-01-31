��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /  �  7  
   �  \   �  Q   8  Q   �  Q   �  D   .  ~   s  �   �  �  �  T   �  t   �  Q   R  L   �  N   �  |   @  M   �  c        o  3   �  3   �  0   �          0  B   J     �  %   �     �  
   �     �  o   �  :   X     �     �     �     �     �     �           $                                               
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
PO-Revision-Date: 2016-07-14 12:13+0100
Last-Translator: Vít Pelčák <vit@pelcak.org>
Language-Team: Czech <kde-i18n-doc@kde.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Lokalize 18.12.0
 
Syntaxe:
             #   'dest' může být "trash:/" pro přesun souborů
            #   do koše.
             #   krátká verze kioclient cp
            #   je také dostupná.

             #   krátká verze kioclient mv
            #   je také dostupná.

             #   krátká verze kioclient rm
            #   je také dostupná.

   kioclient cat 'url'
            # Zapíše obsah 'url' do stdout

   kioclient copy 'zdroj' 'cil'
            # Zkopíruje URL 'zdroj' do 'cil'.
            #   'zdroj' může být seznam URL.
   kioclient download ['src']
            # Zkopíruje URL 'src' do uživatelem zadaného umístění'.
            #   'src' může být seznam URL, pokud není zadáno, tak
            #   bude zobrazena výzva na jeho doplnění.

   kioclient exec 'url' ['mimetype']
            # Pokusí se otevřít dokument na který ukazuje 'url' v aplikaci,
            #   kterou přiřadilo KDE. Můžete vynechat 'mimetype'.
            #   V této fázi je typ MIME určen
            #   automaticky. Samozřejmě, URL může být URL
            #   dokumentu, nebo to může být soubor *.desktop.
            #   'url' může být rovněž spustitelný soubor.
   kioclient exec .
             // Otevře aktuální adresář. Velice pohodlné.

   kioclient exec file:/home/weis/data/test.html Netscape
             // Otevře soubor pomocí výchozí aplikace

   kioclient exec file:/root/Desktop/emacs.desktop
             // Spustí emacs

   kioclient exec ftp://localhost/
             // Otevře nové okno s URL

   kioclient ls 'url'
            # Vypíše obsah adresáře 'url' do stdout

   kioclient move 'zdroj' 'cil'
            # Přesune URL 'zdroj' do 'cil'.
            #   'zdroj' může být seznam URL.
   kioclient openProperties 'url'
            # Otevře nabídku vlastností

   kioclient remove 'url'
            # Odstraní URL
            #   'url' může být seznam URL.
 *** Příklady:
 %1: Syntaktická chyba. Příliš málo argumentů
 %1: Syntaktická chyba. Příliš mnoho argumentů
 %1: Syntaktická chyba. Neznámý příkaz '%2'
 Argumenty pro příkaz Příkaz (viz --commands) Nástroj příkazové řádky pro síťově transparentní operace Cílové URL Místo, kam se mají stahovat soubory vit@pelcak.org KIO klient Vít Pelčák Neinteraktivní režim: bez dialogových oken. Jestli chcete grafické spojení, použijte --platform offscreen Přepsat cíl pokud existuje (pro kopírování a přesun) Zobrazit dostupné příkazy Zdrojové URL příkaz soubor nebo URL URL URL... 