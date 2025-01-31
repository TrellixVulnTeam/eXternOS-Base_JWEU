��          �   %   �      0  	   1  X   ;  S   �  S   �  P   <  y   �  �     �  �  R   o  e   �  P   (  M   y  x   �  H   @  d   �     �     	  4   	     R	  
   b	  6   m	     �	     �	  �  �	  	   �  �   �  �   6  �   �  �   N  �   �  �  �  f  �  �     �   �  k   Z  t   �  �   ;  d   -  �   �  Q   K  /   �  �   �     v  
   �  �   �  6   ^  n   �         
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
PO-Revision-Date: 2010-08-14 12:13+0700
Last-Translator: Sahachart Anukulkitch <drrider@gmail.com>
Language-Team: Thai <thai-l10n@googlegroups.com>
Language: th
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Poedit-Language: Thai
X-Poedit-Country: THAILAND
X-Poedit-SourceCharset: utf-8
 
Syntax:
             #   'dest' อาจจะเป็น "trash:/" ในการย้ายแฟ้ม
            #  ลงถังขยะ (ลบแฟ้ม)
             #   คำสั่งแบบย่อ kioclient mv
            #   ก็สามารถใช้ได้ด้วย.

             #   คำสั่งแบบย่อ kioclient rm
            #   ก็สามารถใช้ได้ด้วย.

   kioclient cat 'url'
            # ทำการเขียนเนื้อหาของ 'url' ออกมาที่ stdout (เช่น หน้าจอ)

   kioclient copy 'src' 'dest'
            # ทำการคัดลอก URL จาก 'src' ไปที่ 'dest'.
            #   'src' อาจจะเป็นรายการของ URLs หลาย ๆ อันได้
   kioclient download ['src']
            # ทำการคัดลอก URL 'src' ไปยังตำแหน่งที่ผู้ใช้ระบุ
            #   'src' อาจจะเป็นรายการหนึ่งของ URLs หลาย ๆ อันก็ได้ ซึ่งถ้าหากไม่ได้ใส่ไว้
            #   ก็จะมีการร้องขอ URL.

   kioclient exec 'url' ['mimetype']
            #   พยายามเปิดเอกสารที่ถูกระบุโดย 'url' ในแอปพลิเคชัน
            #   ถูกตั้งไว้ให้เปิดเอกสารชนิดนี้ใน KDE. คุณอาจจะละค่า 'mimetype' ไว้ได้
            #   ในกรณีนี้ mimetype จะถูกพิจารณาโดยอัตโนมัติ
            #   แน่นอนว่าค่า URL อาจจะเป็น URL ของเอกสารหนึ่ง ๆ
            #   หรือมันอาจจะป็นแฟ้ม *.desktop ก็ได้
            #   'url' ยังสามารถเป็นแฟ้มเรียกประมวลผลก็ได้ดู
   kioclient exec .
             // เปิดไดเร็คทอรีที่อยู่ตอนนี้. สะดวกมาก!

   kioclient exec file:/home/weis/data/test.html
             // เปิดแฟ้มด้วยโปรแกรมที่ตั้งไว้เป็นค่าปริยาย

   kioclient exec file:/root/Desktop/emacs.desktop
             // เปิดโปรแกรม emacs

   kioclient exec ftp://localhost/
             // เปิดหน้าต่างใหม่ด้วย URL

   kioclient move 'src' 'dest'
            # ย้าย URL จาก 'src' ไปที่ 'dest'.
            #   'src' อาจจะเป็นรายการหนึ่งของ URLs หลาย ๆ อันก็ได้.
   kioclient openProperties 'url'
            # เปิดเมนูคุณสมบัติ

   kioclient remove 'url'
            # ทำการลบ URL
            #   'url' อาจจะเป็นรายการของ URLs หลาย ๆ อันได้.
 ค่าอาร์กิวเมนต์สำหรับคำสั่ง คำสั่ง (ดูที่ --commands) เครื่องมือแบบพิมพ์คำสั่งสำหรับการทำงานเกี่ยวกับเครือข่าย URL ปลายทาง KIO Client ทำการเขียนทับที่ปลายทาง ถ้าหากว่ามีอยู่ (สำหรับการคัดลอก และการย้าย) แสดงคำสั่งที่มีให้ URL ต้นทาง (หนึ่งตัว) หรือ URLs ต้นทาง (หลายตัว) 