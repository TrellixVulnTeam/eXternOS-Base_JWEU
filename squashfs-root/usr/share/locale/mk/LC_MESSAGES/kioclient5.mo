��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  �  s     .  �   B  "  �  t   �  �   _	  Z   �	  a   V
  �   �
  \   ]  *   �  )   �  i        y     �  ,   �  /   �         	                                                
                     
Syntax:
   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-01-03 11:07+0100
Last-Translator: Bozidar Proevski <bobibobi@freemail.com.mk>
Language-Team: Macedonian <mkde-l10n@lists.sourceforge.net>
Language: mk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: Plural-Forms: nplurals=3; plural=n%10==1 ? 0 : n%10==2 ? 1 : 2;
 
Синтакса:
   kioclient cat 'url'
            # Ја запишува содржината на 'url' на стандардниот излез

   kioclient download ['src']
            # Го копира URL 'src' во локација одредена од корисникот'.
            #   'src' може да биде листа со URL, а ако не е присутен
            #   ќе биде побаран URL.

   kioclient exec .
             // Го отвора тековниот именик. Многу пригодно.

   kioclient exec file:/home/weis/data/test.html
             // Ја отвора датотеката со стандардното поврзување

   kioclient exec file:/root/Desktop/emacs.desktop
             // Стартува emacs

   kioclient exec ftp://localhost/
             // Отвора нов прозорец со URL

   kioclient move 'src' 'dest'
            # Го преместува URL од 'src' во 'dest'.
            #   'src' може да биде листа со URL.
   kioclient openProperties 'url'
            # Отвора мени со својства

 Аргументи за командата Команда (видете --commands). Команднолиниска алатка за мрежно-транспарентни операции Одредишна адреса KIO-клиент Покажи достапни команди Изворна адреса или адреси 