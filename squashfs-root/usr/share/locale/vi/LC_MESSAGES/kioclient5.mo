��          �   %   �      P  	   Q  X   [  S   �  S     S   \  P   �  y     �   {  �  F  R   �  e   6  P   �  M   �  X   ;  x   �  H   	  d   V	     �	     �	  4   �	     
  
   /
  6   :
     q
     �
  {  �
       m   %  6   �  7   �  7     i   :  �   �    ,    4  ]   R  q   �  P   "  Y   s  w   �  �   E  V   �  n   +     �     �  1   �  
   �       I        `      }                                                        	                                            
                         
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2013-01-07 10:50+0800
Last-Translator: Lê Hoàng Phương <herophuong93@gmail.com>
Language-Team: Vietnamese <kde-i18n-vi@kde.org>
Language: vi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.5
Plural-Forms: nplurals=1; plural=0;
 
Cú pháp:
             #   'dest' có thể là "trash:/" để di chuyển tập tin
            #   vào thùng rác.
             #  phiên bản rút gọn: kioclient cp

             #   phiên bản rút gọn: kioclient mv

             #   phiên bản rút gọn: kioclient rm

   kioclient cat 'url'
            # Hiện nội dung của 'url' lên đầu ra tiêu chuẩn (stdout)

   kioclient copy 'src' 'dest'
            # Sao chép URL 'src' tới 'dest'.
            #   'src' có thể là danh sách các URL.
   kioclient download ['src']
            # Sao chép URL 'src' vào vị trí được người dùng chỉ định'.
            #   'src' có thể là danh sách các URL, nếu như chưa có
            #   thì một yêu cầu URL sẽ được đưa ra.

   kioclient exec 'url' ['mimetype']
            # Thử mở một tập tin được trỏ tới bởi 'url', trong ứng dụng
            #   liên kết với nó bởi KDE. Bạn có thể bỏ qua 'mimetype'.
            #   Trong trường hợp này, kiểu tập tin sẽ được nhận dạng
            #   tự động. Tất nhiên, URL vừa có thể là URL của một tài
            #   liệu, vừa có thể là một tập tin *.desktop.
            #   'url' cũng có thể là một tập tin thực thi nữa.
   kioclient exec .
             // Mở thư mục hiện tại. Rất tiện lợi đấy.

   kioclient exec file:/home/weis/data/test.html
             // Mở tập tin với ứng dụng mặc định

   kioclient exec file:/root/Desktop/emacs.desktop
             // Chạy emacs

   kioclient exec ftp://localhost/
             // Mở một cửa sổ mới với URL

   kioclient ls 'url'
            # Liệt kê nội dung của thư mục 'url' lên đầu ra tiêu chuẩn (stdout)

   kioclient move 'src' 'dest'
            # Di chuyển các URL 'src' tới 'dest'.
            #   'src' có thể là danh sách các URL.
   kioclient openProperties 'url'
            # Mở một trình đơn thuộc tính

   kioclient remove 'url'
            # Xoá bỏ URL
            #   'url' có thể là danh sách các URL.
 Tham số cho lệnh Lệnh (xem --commands) Công cụ dòng lệnh cho các thao tác mạng URL đích Trình khách KIO Ghi đè mục đích nếu tồn tại (với sao chép và di chuyển) Hiện các lệnh sẵn có Một hoặc nhiều URL nguồn 