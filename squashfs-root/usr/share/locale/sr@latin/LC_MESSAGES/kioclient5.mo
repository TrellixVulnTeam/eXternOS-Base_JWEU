��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /  �  7     7  b   C  R   �  R   �  L   L  H   �  �   �  �   l  h  :  L   �  e   �  Q   V  Q   �  P   �  �   K  F   �  h   "     �  .   �  ,   �  3   �     )     >  2   X     �  &   �     �     �     �  q   �  >   e     �     �     �     �     �     �           $                                               
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
Language: sr@latin
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Environment: kde
 
Sintaksa:
             #   Odredište može biti trash:/, za premeštanje
            #   fajlova u smeće.

             #   Takođe je dostupna kratka verzija
            #   kioclient cp.

             #   Takođe je dostupna kratka verzija
            #   kioclient mv.

             #   Dostupna je i kratka verzija
            #   kioclient rm.

   kioclient cat 'url'
            # Ispisuje sadržaj URL‑a na stdiz

   kioclient copy 'izvor' 'odrediste'
            # Kopira URL izvora na odredište.
            #   Izvor može biti i spisak URL‑ova.
   kioclient download ['izvor']
            # Kopira URL izvora na korisnički zadatu lokaciju.
            #   Izvor može biti i spisak URL‑ova; ako nije zadat,
            #   URL će biti zatražen.

   kioclient exec 'url' ['mimetip']
            # pokušava da otvori dokument pokazan URL‑om, u programu
            #   pridruženom mu u KDE‑u. MIME tip se može izostaviti,
            #   u kom slučaju se određuje automatski. Naravno, URL
            #   može biti URL dokumenta, ili *.desktop fajla.
            #   URL može biti i izvršni fajl.
   kioclient exec .
             # otvara tekuću fasciklu — vrlo zgodno.

   kioclient exec file:/home/weis/data/test.html
             # otvara fajl podrazumevanim programom

   kioclient exec file:/root/Desktop/emacs.desktop
             # pokreće Emacs

   kioclient exec ftp://localhost/
             # otvara novi prozor sa URL‑om

   kioclient ls 'url'
            # Ispisuje sadržaj fascikle URL‑a na stdiz

   kioclient move 'izvor' 'odrediste'
            # premešta URL sa izvora na odredište.
            #   Izvor može biti i spisak URL‑ova.
   kioclient openProperties 'url'
            # otvara meni svojstava

   kioclient remove 'url'
            # Uklanja URL
            # (može se navesti i spisak URL‑ova).
 *** Primeri:
 %1: Sintaksna greška, nedovoljno argumenata.
 %1: Sintaksna greška, previše argumenata.
 %1: Sintaksna greška, nepoznata naredba „%2“.
 Argumenti uz naredbu Naredba (vidi --commands) Alatka komandne linije za mrežnoprozirne postupke Odredišni URL Odredište gde treba preuzeti fajlove. caslav.ilic@gmx.net K‑U/I klijent Časlav Ilić Neinteraktivna upotreba: bez prozora sa porukama. Ako ne želite grafičku vezu, upotrebite --platform offscreen. Prebriši odredište ako postoji (za kopiranje i premeštanje) Prikaži raspoložive naredbe Izvorni URL ili URL‑ovi naredba Fajl ili URL URL URL‑ovi... 