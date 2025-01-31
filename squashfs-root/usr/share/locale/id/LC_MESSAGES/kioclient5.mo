��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x     �  d     P   k  P   �  K     I   Y  z   �  �     �  �  O   �  c   �  U   U  R   �  L   �  }   K  F   �  e        v  )   �  ,   �  1   �          #  5   ?  
   u     �     �  	   �     �  p   �  =   B      �     �  6   �     �     �     
                %                                               
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
PO-Revision-Date: 2019-11-05 20:06+0700
Last-Translator: Wantoyo <wantoyek@gmail.com>
Language-Team: Indonesian <kde-i18n-doc@kde.org>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 19.08.1
 
Sintaksis:
             #   'dest' dapat berupa "trash:/" untuk memindahkan
            #   file ke sesampahan.
             #   versi singkat dari kioclient cp
            #   juga tersedia.

             #   versi singkat dari kioclient mv
            #   juga tersedia.

             #   versi singkat kioclient rm
            #   juga tersedia.

   kioclient cat 'url'
            # Mengeluarkan konten 'url' ke stdout

   kioclient copy 'src' 'dest'
            # Menyalin URL 'src' ke 'dest'.
            #   'src' dapat berupa senarai URL.
   kioclient unduh ['src']
            # Menyalin URL 'src' ke lokasi yang ditentukan pengguna.
            #   'src' dapat berupa senarai URL, jika tidak ada maka
            #   sebuah URL akan diminta.

   kioclient exec 'url' ['mimetype']
            # Mencoba untuk membuka dokumen yang diarahkan oleh 'url', di aplikasi
            #   yang diasosiasikan dengannya di KDE. Anda dapat menghapus 'tipe mime'.
            #   Dalam hal ini tipe mime ditentukan secara
            #   otomatis. Tentu saja URL dapat berupa URL
            #   dokumen, atau mungkin file *.desktop.
            #   'url' bisa jadi file dapat dieksekusi pula.
   kioclient exec .
             // Membuka direktori saat ini. Sangat nyaman.

   kioclient exec file :/home/weis/data/tes.html
             // Membuka file dengan pengikat baku

   kioclient exec file:/root/Desktop/emacs.desktop
             // Menjalankan emacs

   kioclient exec ftp://localhost/
             // Membuka window baru dengan URL

   kioclient ls 'url'
            # Daftar konten direktori 'url' ke stdout

   kioclient move 'src' 'dest'
            # Memindahkan URL 'src' ke 'dest'.
            #   'src' dapat berupa senarai URL.
   kioclient openProperties 'url'
            # Membuka menu properti

   kioclient remove 'url'
            # Menghapus URL
            #   'url' dapat berupa senarai URL.
 *** Contoh:
 %1: Galat sintaksis, tidak cukup argumen
 %1: Galat sintaksis, terlalu banyak argumen
 %1: Galat sintaksis, perintah tak diketahui '%2'
 Argumen untuk perintah Perintah (lihat --commands) Alat baris perintah untuk operasi transparan jaringan URL Tujuan Tujuan tempat unduhan file andhika.padmawan@gmail.com Klien KIO Andhika Padmawan Penggunaan non interaktif: tanpa kotak pesan. Jika anda tidak ingin koneksi grafis, gunakan --platform offscreen Timpa tujuan jika telah ada (untuk penyalinan dan pemindahan) Tampilkan perintah yang tersedia Sumber URL atau banyak URL Gunakan kotak perpesanan dan notifikasi bawaan lainnya perintah file atau URL url url... 