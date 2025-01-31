��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /    7     ;  �   O  n   �  n   J  d   �  a     �   �  )  <    f  i   y  �   �  \   n  h   �  q   4  �   �  Y   o  �   �     S  N   h  J   �  Q     &   T  $   {  ]   �     �  E        ^     r     �  �   �  m   ]  4   �  ,         -     <     S     Z           $                                               
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
Report-Msgid-Bugs-To: http://bugs.kde.org
PO-Revision-Date: 2016-07-10 19:45+0200
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr@ijekavian
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Environment: kde
 
Синтакса:
             #   Одредиште може бити trash:/, за премијештање
            #   фајлова у смеће.

             #   Такође је доступна кратка верзија
            #   kioclient cp.

             #   Такође је доступна кратка верзија
            #   kioclient mv.

             #   Доступна је и кратка верзија
            #   kioclient rm.

   kioclient cat 'url'
            # Исписује садржај УРЛ‑а на стдиз

   kioclient copy 'izvor' 'odrediste'
            # Копира УРЛ извора на одредиште.
            #   Извор може бити и списак УРЛ‑ова.
   kioclient download ['izvor']
            # Копира УРЛ извора на кориснички задату локацију.
            #   Извор може бити и списак УРЛ‑ова; ако није задат,
            #   УРЛ ће бити затражен.

   kioclient exec 'url' ['mimetip']
            # покушава да отвори документ показан УРЛ‑ом, у програму
            #   придруженом му у КДЕ‑у. МИМЕ тип се може изоставити,
            #   у ком случају се одређује аутоматски. Наравно, УРЛ
            #   може бити УРЛ документа, или *.desktop фајла.
            #   УРЛ може бити и извршни фајл.
   kioclient exec .
             # отвара текућу фасциклу — врло згодно.

   kioclient exec file:/home/weis/data/test.html
             # отвара фајл подразумијеваним програмом

   kioclient exec file:/root/Desktop/emacs.desktop
             # покреће Емакс

   kioclient exec ftp://localhost/
             # отвара нови прозор са УРЛ‑ом

   kioclient ls 'url'
            # Исписује садржај фасцикле УРЛ‑а на стдиз

   kioclient move 'izvor' 'odrediste'
            # премијешта УРЛ са извора на одредиште.
            #   Извор може бити и списак УРЛ‑ова.
   kioclient openProperties 'url'
            # отвара мени својстава

   kioclient remove 'url'
            # Уклања УРЛ
            # (може се навести и списак УРЛ‑ова).
 *** Примери:
 %1: Синтаксна грешка, недовољно аргумената.
 %1: Синтаксна грешка, превише аргумената.
 %1: Синтаксна грешка, непозната наредба „%2“.
 Аргументи уз наредбу Наредба (види --commands) Алатка командне линије за мрежнопрозирне поступке Одредишни УРЛ Одредиште где треба преузети фајлове. caslav.ilic@gmx.net К‑У/И клијент Часлав Илић Неинтерактивна употреба: без прозора са порукама. Ако не желите графичку везу, употребите --platform offscreen. Пребриши одредиште ако постоји (за копирање и премијештање) Прикажи расположиве наредбе Изворни УРЛ или УРЛ‑ови наредба Фајл или УРЛ УРЛ УРЛ‑ови... 