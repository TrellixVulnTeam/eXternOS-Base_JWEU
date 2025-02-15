��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  z  s     �  g   
  s  r  �   �  �   |	  u   
  u   �
  �   �
  }   �  /   n  #   �  u   �     8     O  2   i     �         	                                                
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
PO-Revision-Date: 2008-09-30 23:57+0530
Last-Translator: Pragnesh Radadiya <pg.radadia@gmail.com>
Language-Team: Gujarati <gu@li.org>
Language: gu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=(n!=1);
 
વાકયરચના:
   kioclient cat 'url'
            # 'url' પરની વિગતો ને stdout પર લખો

   kioclient download ['ઉદગમ']
            # URL 'ઉદગમ' થી વપરાશકર્તાએ બતાવેલ સ્થાન પર નકલ કરે છે'.
            #   'ઉદગમ' URLs ની યાદી હોઇ શકે છે, જો ત્યા ના હોય તો
            #   URL માગવામાં આવશે.

   kioclient exec .
             // હાલની ડિરેકટરી ખોલે છે. ખૂબ જ માફક આવે તેવૂ.

   kioclient exec file:/home/weis/data/test.html
             // ફાઇલને મૂળભૂત જોડાણ સાથે ખોલો

   kioclient exec ftp://localhost/
             // URL સાથે નવી વિન્ડો ખોલે છે

   kioclient exec ftp://localhost/
             // URL સાથે નવી વિન્ડો ખોલે છે

   kioclient move 'ઉદ્ગમ' 'લક્ષ્ય'
            # URL ને 'ઉદ્ગમ' થી 'લક્ષ્ય' ખસેડે છે.
            #   'ઉદ્ગમ' URLs ની યાદી પણ હોઇ શકે છે.
   kioclient ગોઠવણીઓ ખોલો 'url'
            # ગોઠવણીઓનુ મેનુ ખોલશે

 આદેશ માટેની દલીલો આદેશ (જુઓ --commands) નેટવર્ક-પારદર્શક કાર્યો માટે આદેશ-રેખા સાધન લક્ષ્ય URL KIO કલાઇન્ટ ઉપલ્બધ આદેશો બતાવો ઉદ્ગમ URL ke URLs 