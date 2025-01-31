��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  �  s     -  A   9  �   {  O   K  j   �  R   	  L   Y	  }   �	  L   $
     q
     �
  T   �
  
   �
  
   �
     
     &         	                                                
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: desktop_kdebase
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2008-11-13 23:28+0100
Last-Translator: Eduard Werner <edi.werner@gmx.de>
Language-Team: en_US <kde-i18n-doc@lists.kde.org>
Language: hsb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KAider 0.1
Plural-Forms: nplurals=4; plural=n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3;
 
Syntaksa:
   kioclient cat 'url'
            # Pisa wobsah 'url' na stdout

   kioclient download ['src']
            # Kopěruje URL 'src' na městno, kotrež wužiwar podawa.
            #   'src' móže być lisćina URLow. Hdyž so njepoda,
            #   so za URLom dopraša.

   kioclient exec .
             // Wočini aktualny zapisk. Jara přihódnje.

   kioclient exec file:/home/weis/data/test.html
             // Wočini dataju ze standardnej komponentu

   kioclient exec file:/root/Desktop/emacs.desktop
             // Startuje emacs

   kioclient exec ftp://localhost/
             // Wočini nowe wokno z URL

   kioclient move 'src' 'dest'
            # Přesunje URL 'src' na 'dest'.
            #   'src' móže być lisćina URLow.
   kioclient openProperties 'url'
            # wočini meni ze swójstwami

 Argumenty za přikaz Přikaz (hl. --commands) Na přikazowej lince bazowacy program za operacije, kiž su přez syć transparentne Cilowy URL KIO Client Móžne přikazy pokazować Žórłowe URLe 