��          �   %   �      0  	   1  X   ;  S   �  S   �  P   <  y   �  �     �  �  R   o  e   �  P   (  M   y  x   �  H   @  d   �     �     	  4   	     R	  
   b	  6   m	     �	     �	  �  �	  
   [  f   f  E   �  E     E   Y  y   �  �     �  �  N   �  d   �  S   ;  U   �     �  G   e  f   �          '  1   A     s  	   �  >   �     �     �         
                                                                                             	                         
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
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

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2010-07-24 23:54+0800
Last-Translator: Sharuzzaman Ahmat Raslan <sharuzzaman@gmail.com>
Language-Team: Malay <kedidiemas@yahoogroups.com>
Language: ms
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=1;
 
Sintaks:
             #   'dest' mungkin "trash:/" untuk memindahkan fail
            #   ke dalam tong sampah.
             #   versi pendek kioclient mv
            #   juga ada.

             #   versi pendek kioclient rm
            #   juga ada.

   kioclient cat 'url'
            # Tulis kandungan 'url' ke stdout

   kioclient copy 'src' 'dest'
            # Salin URL 'src' ke 'dest'.
            #   'src' mungkin adalah senarai URL.
   kioclient download ['src']
            # Salin URL 'src' ke lokasi dinyatakan pengguna'.
            #   'src' mungkin senarai URL, jika tiada maka
            #   satu URL akan diminta.

   kioclient exec 'url' ['mimetype']
            # Cuba untuk membuka dokumen dinyatakan oleh 'url', dalam aplikasi
            #   yang dipadankan dengannya dalam KDE. Anda boleh mengabaikan 'mimetype'.
            #   Dalam kes ini mimetype ditentukan
            #   secara automatik. Sudah pasti URL mungkin URL bagi
            #   dokumen, atau ia mungkin fail *.desktop.
            #   'url' boleh jadi bolehlaksana, juga.
   kioclient exec .
             // Buka direktori semasa. Sangat memudahkan.

   kioclient exec file:/home/weis/data/test.html
             // Membuka fail dengan ikatan default

   kioclient exec file:/root/Desktop/emacs.desktop
             // Memulakan emacs

   kioclient exec ftp://localhost/
             // Membuka tetingkap baru dengan URL

   kioclient move 'src' 'dest'
            # Memindahkan URL 'src' ke 'dest'.
            #   'src' mungkin adalah senarai URL.
   kioclient openProperties 'url'
            # Membuka menu ciri-ciri

   kioclient remove 'url'
            # Membuang URL
            #   'url' mungkin adalah senarai URL.
 Hujah untuk arahan Arahan (lihat --commands) Alatan arahan-baris untuk operasi telus-rangkaian Destinasi URL Klien KIO Tulisganti destinasi jika telah wujud (untuk salin dan pindah) Papar arahan yang ada Sumber URL atau beberapa URL 