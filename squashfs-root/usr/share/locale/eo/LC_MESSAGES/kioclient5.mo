��          �      ,      �  	   �  P   �  y   �  �   ^  �  )  R   �  P     M   j  X   �  x     H   �     �     �  4     
   7     B  �  Z     �  K   �  �   ;	  �   �	  �  �
  P   _  S   �  X     T   ]  �   �  J   8     �     �  /   �     �     �                           
                                            	       
Syntax:
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations KIO Client Show available commands Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2008-02-27 21:33+0100
Last-Translator: Pierre-Marie Pédrot <pedrotpmx@wanadoo.fr>
Language-Team: esperanto <kde-i18n-eo@kde.org>
Language: eo
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=n != 1;
 
Sintakso:
   kioclient cat 'url'
            # Skribas la enhavon de 'url' al stdout

   kioclient copy 'fonton' 'celo'
            # Kopias la adreson de la 'fonto' al 'celo'.
            #   'fonto' povas esti listo de adresoj.

   kioclient download ['fonton']
            # Kopias la adreson de la fonto al loko specifita de la uzanto'.
            #   'fonto' povas esti listo de adresoj, se ĝi ne ekzistas,
            #   la programo petos adreson.

   kioclient exec 'url' ['mime-tipo']
            # Provas malfermi la dokumenton kiun 'url' almontras, en la aplikaĵo
            #   ligita al ĝi en KDE. Vi povas ellasi 'mime-tipon'.
            #   En ĉi tiu okazo la mime-tipo estas determinita
            #   aŭtomate. 'Url' eble estos la adreso de
            #   dokumento, aŭ eble dosiero de tipo *.desktop .
            #   Ankaǔ povas temi pri lanĉebla programo .
   kioclient exec .
             // Malfermas la nunan dosierujon. Estas utile.

   kioclient exec file:/root/Desktop/emacs.desktop
             // Lanĉas Emakson

   kioclient exec ftp://localhost/
             // Malfermas novan fenestron kun adreso

   kioclient ls 'url'
            # Skribas la enhavon de dosierujo 'url' al stdout

   kioclient move 'fonton' 'celo'
            # Movas la URL-'fonton' al 'celo'.
            #   'fonto' povas esti listo de adresoj.
   kioclient openProperties 'url'
            # Malfermas menuon pri ecoj

 Parametroj por komando Komando (vd. --commands) Komandlinia ilo por maŝinsendependaj operacioj KIO-kliento Montri haveblajn komandojn 