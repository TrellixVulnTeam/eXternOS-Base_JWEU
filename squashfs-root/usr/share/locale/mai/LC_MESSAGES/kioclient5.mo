��          �      |      �  	   �  X   �  S   T  S   �  P   �  y   M  �   �  �  �  R   /  e   �  P   �  M   9  x   �  H      d   I     �     �  4   �     	  
   "	     -	  �  E	     �
  X   �
  S   ;  S   �  P   �  y   4  �   �  �  y  �     e   �  m   '  M   �  2  �  �     d   �  @   6  6   w  }   �     ,  &   C  ;   j                          
                  	                                                     
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2010-01-29 15:45+0530
Last-Translator: Rajesh Ranjan <rajesh672@gmail.com>
Language-Team: Maithili <maithili.sf.net>
Language: mai
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=(n!=1);




 
सिंटेक्स:
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
             //  मोजुदा  डिरेक्ट्री केँ खोलैत अछि. बहुते सुविधाजनक.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // ईमैक्स खोलता है

   kioclient exec ftp://localhost/
             // Opens new window with URL

   केआईओक्लाएंट खिसकाना 'स्रोत' 'गंतव्य'
            # खिसकाता अछि 'स्रोत' केँ 'गंतव्य' में.
            #   'स्रोत' यूआरएलक सूची भए सकैत अछि.
   केआईओक्लाएंट ओपन प्रापर्टीज़ 'यूआरएल'
            # प्रापर्टी मेनू खोलैत अछि

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 कमांड क' लेल आर्गुमेंटसभ कमांड (देखू --कमांडसभ) नेटवर्क-पारदर्शी आपरेशन क' लेल कमांड लाइन अओजार गंतव्य URL केआईओ क्लाएंट  उपलब्ध कमांडसभ देखाबू 