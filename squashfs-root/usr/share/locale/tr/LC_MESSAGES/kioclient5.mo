��    &      L  5   |      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;	  x   �	  H   
  d   V
     �
  3   �
  1   �
  3   0     d     z  4   �     �  '   �         
   !     ,  i   K  6   �     �                    +     /    7     �  h   �  ]   /  ]   �  \   �  Z   H  �   �  �   1  �  �  O   �  m   �  c   ?  N   �  i   �  �   \  O   �  }   7     �  .   �  -   �  /   "     R     j  3   �     �     �     �     �       �     =   �  "   �     �               /     3           $                                               
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
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-04-13 15:14+0100
Last-Translator: Volkan Gezer <volkangezer@gmail.com>
Language-Team: Turkish <kde-l10n-tr@kde.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
 
Söz Dizimi:
             #  Dosyaları çöpe atmak için 'hedef', "trash:/"
            #   olarak kullanılabilir.
             #   Kısayol olarak, kioclient cp
            #   şeklinde de kullanılabilir.

             #   Kısayol olarak, kioclient mv
            #   şeklinde de kullanılabilir.

             #   Kısayol olarak kioclient rm
            #   şeklinde de kullanılabilir.

   kioclient cat 'url'
            # 'adresin' standart çıktısının içeriğini yazar

   kioclient copy 'kaynak' 'hedef'
            # 'kaynak' adresini 'hedefe' kopyalar.
            #   'kaynak' bir adresler listesi olabilir.
   kioclient download ['kaynak']
            # 'kaynak' adresini kullanıcının belirlediği
            #   'hedefe' kopyalar.
            #   'kaynak' bir adresler listesi olabilir.

   kioclient exec 'url' ['mime türü']
            # 'url' konumundaki dosyayı KDE'deki ilişkili uygulamayı kullanarak açar
            #   İsterseniz 'mime türü' vermeyebilirsiniz. Bu durumda mime türü
            #   otomatik olarak belirlenir. 'url' herhangi bir dosya olabileceği
            #   gibi bir *.desktop dosyası ya da bir çalıştırılabilir dosya da
            #   olabilir.
   kioclient exec .
             // Geçerli dizini açar. Çok kullanışlı.

   kioclient exec file:/home/weis/data/test.html
             // Dosyayı öntanımlı bağlayıcıyla açar

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs uygulamasını başlatır

   kioclient exec ftp://localhost/
             // Yeni pencerede adres açar

   kioclient ls 'adres'
            # 'adreste' bulunan dizinin içeriğini standart çıkışa listeler

   kioclient move 'kaynak' 'hedef'
            # 'kaynak' adresi 'hedefe' taşır.
            #   'kaynak' bir adresler listesi olabilir.
   kioclient openProperties 'url'
            # Bir özellikler menüsü açar

   kioclient remove 'url'
            # 'url' adresindeki dosyayı siler
            #   'url' bir adresler listesi olabilir.
 *** Örnekler:
 %1: Söz dizimi hatası, yeterli argüman yok
 %1: Söz dizimi hatası, çok fazla argüman
 %1: Söz dizimi hatası, bilinmeyen komut '%2'
 Komut için argümanlar Komut (bakınız --commands) Ağ geçişli işlemler için komut satırı aracı Hedef Adres Dosyaların indirileceği hedef ongun.kanat@gmail.com KIO İstemcisi Ongun Kanat Etkileşimli olmayan kullanım: mesaj diyalogları yok. Eğer grafik bağlantısı istemiyorsanız, --platform offscreen kullanın Hedef mevcutsa üzerine yaz (kopyala ve taşı işlemi için) Kullanılabilir komutları göster Kaynak Adres ya da Adresler komut dosya veya adres url urller.. 