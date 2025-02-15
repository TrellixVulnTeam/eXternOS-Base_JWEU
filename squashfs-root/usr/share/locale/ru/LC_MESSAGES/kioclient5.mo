��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p     x     �  �   �  �   �  �     �   �  }   '  �   �  Y  {  h  �  w   >  �   �  \   ;  r   �  �     �   �  �   �  �        �  V   �  W   
  U   b  (   �  s   �  d   U  #   �  c   �  0   B     s  e   �  (  �  n      2   �   H   �   �   �      �!     �!  
   �!     �!           %                                               
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kioclient.po
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-17 22:07+0300
Last-Translator: Alexander Yavorsky <kekcuha@gmail.com>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.1
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 
Использование:
             #   В качестве параметра «назначение» можно задать
            #   «trash:/», тогда файлы будут удалены в корзину.
             #   Можно использовать сокращённый
            #   вариант команды «kioclient cp».

             #   Можно использовать сокращённый
            #   вариант команды «kioclient mv».

             #   Можно использовать сокращённый
            #   вариант команды «kioclient rm».

   kioclient cat 'url'
            # Вывести содержимое на стандартный поток вывода

   kioclient copy 'источник' 'назначение'
            # Скопировать один или несколько файлов
            # в указанное место назначения.
   kioclient download ['источник']
            # Скопировать один или несколько файлов в текущий каталог.
            # Если источник не указан, будет открыто диалоговое окно, 
            # в котором можно его указать.

   kioclient exec 'url' ['тип MIME']
            # Попытаться открыть файл, расположенный по заданному
            # адресу в соответствующем приложении. Если тип MIME 
            # не указан, он определяется автоматически. 
            # В качестве 'url' можно указать как адрес реального файла,
            # так и файл .desktop (значок для файла). Файл также может
            # быть исполняемым.
   kioclient exec .
             // Открыть текущий каталог в диспетчере файлов.

   kioclient exec file:/home/weis/data/test.html
             // Открыть файл в связанном приложении

   kioclient exec file:/root/Desktop/emacs.desktop
             // Запустить Emacs

   kioclient exec ftp://localhost/
             // Открыть новое окно Konqueror с адресом

   kioclient ls 'url'
            # Вывести содержимое каталога по адресу на стандартный поток вывода

   kioclient move 'источник' 'назначение'
            # Переместить один или несколько файлов
            # в указанное место назначения.
   kioclient openProperties 'url'
            # Показать диалог свойства объекта по адресу 'url'

   kioclient remove 'url'
            # Удалить по адресу URL
            #   'url' может быть списком адресов.
 *** Примеры:
 %1: ошибка синтаксиса (недостаточно аргументов)
 %1: ошибка синтаксиса (слишком много аргументов)
 %1: ошибка синтаксиса (неизвестная команда «%2»)
 Аргументы для команды Команда (список доступных можно получить через параметр --commands) Консольная программа для локальных и сетевых операций Адрес URL назначения Адрес, по которому следует сохранить полученные файлы skull@kde.ru,shafff@ukr.net,aspotashev@gmail.com Клиент KIO Андрей Черепанов,Николай Шафоростов,Александр Поташев Неинтерактивное использование: диалоговые окна с сообщениями не будут показаны. Для запуска без подключения к графической подсистеме используйте «--platform offscreen». Заменять существующие файлы (при копировании и перемещении) Показать доступные команды Один или несколько адресов URL источника Использовать диалоговые окна с сообщениями и другие способы доставки уведомлений команда файл или URL адрес адреса... 