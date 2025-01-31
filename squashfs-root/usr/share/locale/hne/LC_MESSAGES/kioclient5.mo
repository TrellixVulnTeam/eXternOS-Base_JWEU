��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  �  s     �  �     �  �  �   H	  �   �	  g   �
  �   �
  �   y  p   R  8   �  )   �  y   &  %   �  %   �  7   �  <   $         	                                                
                     
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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-02-05 16:18+0530
Last-Translator: Ravishankar Shrivastava <raviratlami@aol.in>
Language-Team: Hindi <kde-i18n-doc@lists.kde.org>
Language: hi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 0.2
Plural-Forms: nplurals=2; plural=(n!=1);
 
सिंटेक्स:
  kioclient cat 'url'
            # यूआरएल के सामान ल एसटीडीआउट मं लिखथे 

  kioclient download ['src']
            # यूआरएल 'स्रोत' ल कमइया के बताय निरधारित जगह मं नकल करथे '.
            #   'स्रोत' यूआरएल के सूची हो सकथे. अउ यदि मौजूद नइ हे तो
            #   यूआरएल बर निवेदन करे जाही.

   kioclient exec .
             // अभी हाल के डिरेक्टरी ल खोलथे. बहुत ही सुविधाजनक.

   kioclient exec file:/home/weis/data/test.html
             // फाइल ल डिफाल्ट बाइंडिंग के साथ खोलथे 

   kioclient exec file:/root/Desktop/emacs.desktop
             // ईमैक्स खोलथे 

   kioclient exec ftp://localhost/
             // यूआरएल के साथ नवा विंडो खोलथे 

   kioclient move 'src' 'dest'
            # खिसकाथे  'स्रोत' ल 'गंतव्य' में.
            #   'स्रोत' यूआरएल के सूची हो सकथे .
   kioclient openProperties 'url'
            # प्रापर्टी मेन्यू खोलथे 

 कमांड बर आर्गुमेंट्स कमांड (देखव --commands) नेटवर्क-पारदर्सी आपरेसन मन बर कमांड लाइन औजार गंतव्य यूआरएल केआईओ क्लायंट मिलत कमांड मन ल देखाव स्रोत यूआरएल या यूआरएल 