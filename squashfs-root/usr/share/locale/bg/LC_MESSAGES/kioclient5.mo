��          �   %   �      p  	   q  X   {  S   �  S   (  S   |  P   �  y   !  R   �  e   �  P   T  M   �  X   �  x   L  H   �  d     3   s  1   �  3   �          #  4   <     q  
   �  6   �     �     �     �  |  �     w
  �   �
  h     h   �  h   �  }   R  �   �  g   i  �   �  X   a  _   �  �     �   �  d   H  �   �  U   /  Z   �  P   �  *   1  !   \  e   ~  (   �            9   �  (   �             	                                
                                                                                   
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs file or URL Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2013-09-23 22:25+0300
Last-Translator: Yasen Pramatarov <yasen@lindeas.com>
Language-Team: Bulgarian <dict@ludost.net>
Language: bg
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=2; plural=n != 1;
 
Синтаксис:
             #   'dest' може да е "trash:/" за преместване
            #   на файловете в кошчето.
             #   кратката версия kioclient cp
            #   е също налична.

             #   кратката версия kioclient mv
            #   е също налична.

             #   кратката версия kioclient rm
            #   е също налична.

   kioclient cat 'url'
            # Изписва съдържанието на 'url' в стандартния изход

   kioclient move 'src' 'dest'
            # Копира URL от 'src' в 'dest'.
            #   'src' може да бъде списък с URL-и.
   kioclient exec .
             // Отваря текущата папка. Много удобно.

   kioclient exec file:/home/weis/data/test.html
             // Отваря файла с подразбиращата се програма

   kioclient exec file:/root/Desktop/emacs.desktop
             // Зарежда emacs

   kioclient exec ftp://localhost/
             // Отваря нов прозорец с URL

   kioclient ls 'url'
            # Показва списък на съдържанието на 'url' в стандартния изход

   kioclient move 'src' 'dest'
            # Премества URL от 'src' в 'dest'.
            #   'src' може да бъде списък с URL-и.
   kioclient openProperties 'url'
            # Отваря прозорец с настройки

   kioclient remove 'url'
            # Премахва URL
            #   'url' може да бъде списък с URL-и.
 %1: Синтактична грешка. Недостатъчно аргументи
 %1: Синтактична грешка. Прекалено много аргументи
 %1: Синтактична грешка. Непозната команда "%2"
 Аргументи на командата Команда (вж. --commands) Програма от команден ред за прозрачни мрежови операции URL-адрес на назначение Клиент KIO Презаписване на назначението, ако съществува (при копиране и местене) Показване на наличните команди URL-адрес(и) на източник файл или URL-адрес 