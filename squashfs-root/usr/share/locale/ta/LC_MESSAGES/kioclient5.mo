��          �      �       H  	   I  P   S  R   �  e   �  P   ]  M   �  x   �  H   u     �     �  4   �  
   "     -  h  E     �  �   �  �   B  �   �  {   �  �     �   �  ~   q	  4   �	  ,   %
  �   R
     �
  >   �
               	            
                                      
Syntax:
   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations KIO Client Show available commands Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2008-03-17 13:15+0530
Last-Translator: ஆமாச்சு <amachu@ubuntu.com>
Language-Team: Tamil <kde-i18n-doc@kde.org>
Language: ta
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
 
நெறி:
   kioclient cat 'url'
            # stdout க்கு 'url' விவரங்களை வெளியிடுகிறது

   kioclient exec .
             // தற்போதைய அடைவை திறக்கும். மிகவும் பயனுள்ளது.

   kioclient exec file:/home/weis/data/test.html
             // இயல்பான பிணைப்புடன் கோப்பினை திறக்கிறது

   kioclient exec file:/root/Desktop/emacs.desktop
             // இமாக்ஸினை திறக்கும்

   kioclient exec ftp://localhost/
             // URL கொண்டு புதிய சாளரத்தை திறக்கும்

   kioclient move 'src' 'dest'
            # URL 'src' தனை 'dest' க்கு மாற்றும்.
            # 'src' URL களின் பட்டியலாக இருக்கலாம்.
   kioclient openProperties 'url'
            # பண்புகள் மெனுவைத் திறக்கும்

 ஆணைக்கான துப்புகள் ஆணை (பார்க்க --commands) வெளிப்படையான-பிணையச் செயல்களுக்கான முனைய-வழி கருவி கேஐஓ வாங்கி கிடைக்கக் கூடிய ஆணைகள் 