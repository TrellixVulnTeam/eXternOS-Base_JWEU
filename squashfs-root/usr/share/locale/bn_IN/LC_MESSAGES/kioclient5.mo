��          �            x  	   y  P   �  �   �  R   �  e   �  P   X  M   �  x   �  H   p     �     �     �  
   �            �  .     �  t   �  �  X  �   2	  �   �	  j   k
  r   �
  �   I  �   B  7   �  /        J     g  R   �  0   �         	                                                 
                     
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

 Arguments for command Command (see --commands) Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-01-12 18:02+0530
Last-Translator: Runa Bhattacharjee <runab@redhat.com>
Language-Team: Bengali INDIA <fedora-trans-bn_IN@redhat.com>
Language: bn_IN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=(n != 1);
 
সিন্টেক্স:
   kioclient cat 'url'
            # 'url'-এ উপস্থিত তথ্য stdout-এ লেখা হবে

   kioclient download ['src']
            # URL 'src'-কে ব্যবহারকারী দ্বারা চিহ্নিত স্থানে স্থানান্তর করা হয়।
            #   'src'-র ক্ষেত্রে একাধিক URL উল্লিখিত হতে পারে, অনুপস্থিত থাকলে
            #   একটি URL লেখার অনুরোধ জানানো হবে।

   kioclient exec .
             // বর্তমান ডিরেক্টরি খোলা হয়। অত্যন্ত সুবিধাজনক।

   kioclient exec file:/home/weis/data/test.html
             // ডিফল্ট বাইন্ডিং সহ ফাইল খোলা হয়

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs আরম্ভ করা হয়

   kioclient exec ftp://localhost/
             // URL সহ নতুন উইন্ডো খোলা হয়

   kioclient move 'src' 'dest'
            # URL 'src'-কে 'dest'-এ স্থানান্তর করা হয়।
            #   'src'-র ক্ষেত্রে একাধিক URL উল্লিখিত হতে পারে।
   kioclient openProperties 'url'
            # বৈশিষ্ট্য সংক্রান্ত মেনু প্রদর্শন করা হয়

 কমান্ডের আর্গুমেন্ট কমান্ড (--commands দেখুন) উদ্দিষ্ট URL KIO ক্লায়েন্ট উপলব্ধ কমান্ড প্রদর্শন করা হবে উৎসের URL অথবা URLগুলি 