��            )   �      �  	   �  X   �  S     S   X  S   �  P      y   Q  �   �  �  �  R   3  e   �  P   �  M   =  X   �  x   �  H   ]	  d   �	  3   
  1   ?
  3   q
     �
     �
  4   �
     	  
     6   $     [     s     �  �  �     :  a   F  S   �  S   �  S   P  L   �  �   �  �   s  �  P  N   �  m   K  S   �  V     T   d  ~   �  S   8  k   �  /   �  -   (  7   V     �     �  L   �       
   #  @   .     o     �     �                        
                                        	                                                                         
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
 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs file or URL Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2013-11-23 19:31+0200
Last-Translator: Sergiu Bivol <sergiu@ase.md>
Language-Team: Romanian <kde-i18n-ro@kde.org>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2;
X-Generator: Lokalize 1.5
 
Sintaxă:
             #   'dest' poate fi „trash:/” pentru a muta fișierele
            #   la gunoi.
             #   versiunea scurtă kioclient cp
            #   este disponibilă.

             #   versiunea scurtă kioclient mv
            #   este disponibilă.

             #   versiunea scurtă kioclient rm
            #   este disponibilă.

   kioclient cat 'url'
            # Afișează conținutul 'url' la stdout

   kioclient copy 'src' 'dest'
            # Copiază URL-ul 'src' la 'dest'.
            #   'src' poate fi o listă de URL-uri.
   kioclient download ['src']
            # Copiază URL-ul 'src' la o locație specificată de utilizator.
            #   'src' poate fi o listă de URL-uri. Dacă nu e specificat, 
            #   va fi cerut un URL.

   kioclient exec 'url' ['mimetype']
            # Încearcă să deschidă documentul indicat de 'url', în aplicația
            #   asociată cu acesta în KDE. Puteți omite 'mimetype'.
            #   În acest caz, tipul MIME este determinat automat.
            #   Desigur, URL poate fi URL-ul unui document, sau
            #   poate fi un fișier *.desktop.
            #   'url' poate fi executabil la rândul său.
   kioclient exec .
             // Deschide directorul curent. Foarte comod.

   kioclient exec file:/home/weis/data/test.html
             // Deschide fișierul cu asociereaa implicită

   kioclient exec file:/root/Desktop/emacs.desktop
             // Lansează emacs

   kioclient exec ftp://localhost/
             // Deschide o fereastră nouă cu URL

   kioclient ls 'url'
            # Scrie conținutul dosarului „url” la stdout

   kioclient move 'src' 'dest'
            # Mută URL-ul 'src' la 'dest'.
            #   'src' poate fi o listă de URL-uri.
   kioclient openProperties 'url'
            # Deschide un meniu cu proprietăți

   kioclient remove 'url'
            # Elimină URL-ul
            #   'url' poate fi o listă de URL-uri.
 %1: eroare de sintaxă: argumente insuficiente
 %1: eroare de sintaxă: prea multe argumente
 %1: eroare de sintaxă: comandă „%2” necunoscută
 Argumente pentru comandă Comandă (vezi --commands) Instrument în linie de comandă pentru operații transparente pentru rețea URL-ul destinație Client KIO Suprascrie destinația dacă există (pentru copiere și mutare) Arată comenzile disponibile URL sau URL-urile sursă fișier sau URL 