��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x     *  q   7  >   �  >   �  >   '  K   f  �   �  �   J  �  #  L   �  i   �  T   h  O   �  P     �   ^  G   �  u   <     �  -   �  +   �  2        Q     e  C        �      �     �            q   3  L   �     �       4   -     b     j     z     ~           %                                               
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-08-17 14:10+0300
Last-Translator: Moo
Language-Team: lt <kde-i18n-lt@kde.org>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : n%10==0 || (n%100>10 && n%100<20) ? 2 : 3);
X-Generator: Poedit 2.2.1
 
Sintaksė:
             #   „dest“ gali būti „trash:/“, jei norite perkelti
            #   failus į šiukšlinę.
             #  yra prieinama ir trumpa kioclient cp versija.

             #  yra prieinama ir trumpa kioclient mv versija.

             #   yra prieinama ir trumpa kioclient rm versija

   kioclient cat „url“
            # Rašo „url“ turinį į stdout

   kioclient copy „src“ „dest“
            # Kopijuoja URL „src“ į „dest“.
            #   „src“ gali būti keleto URL sąrašas.

   kioclient download [„src“]
            # Kopijuoja URL „src“ į naudotojo nurodytą vietą.
            #   „src“ gali būti keleto URL sąrašas; jo nenurodžius,
            #   URL bus užklaustas.

   kioclient exec „url“ [„mimetype“]
            # Bando atverti „url“ nurodytą dokumentą, su KDE susietoje
            #   programoje.
            #   Nenurodžius „mimetype“ parametro, mimetype
            #   bus nustatomas automatiškai. Žinoma „url“ gali
            #   būti dokumento URL, arba *.desktop failas.
            #   'url' gali būti ir vykdomasis failas.
   kioclient exec .
             // Atveria esamą katalogą. Labai patogu.

   kioclient exec file:/home/weis/data/test.html
             // Atveria failą su numatytuoju susiejimu

   kioclient exec file:/root/Desktop/emacs.desktop
             // Paleidžia emacs

   kioclient exec ftp://localhost/
             // Atveria naują langa su URL

   kioclient ls 'url'
            # Išvardija katalogo 'url' turinį į stdout

   kioclient move „src“ „dest“
            # Perkelia URL „src“ į „dest“.
            #   „src“ gali būti keleto URL sąrašas.
   kioclient openProperties 'url'
            # Atveria savybių meniu

   kioclient remove „url“
            # Pašalina URL.
            #   „url“ gali būti keleto URL sąrašas.
 *** Pavyzdžiai:
 %1: Sintaksės klaida: per mažai argumentų
 %1: Sintaksės klaida: per daug argumentų
 %1: Sintaksės klaida: nežinoma komanda „%2“
 Komandos argumentai Komanda (žr. --commands) Komandinų eilutės įrankis, skirtas skaidrioms tinklo operacijoms Paskirties URL Paskirtis kur atsisiųsti failus liudas@akmc.lt, <> KIO kliento programa Liudas Ališauskas, Moo Neinteraktyvus naudojimas: jokių žinučių langų. Jei nenorite grafinio ryšio, naudokite --platform offscreen Perrašyti paskirties failą, jei toks yra (kopijavimo ir perkėlimo atveju) Rodyti prieinamas komandas Vienas ar keletas šaltinio URL Naudoti žinučių langus ir kitus savus pranešimus komanda failas arba URL url url... 