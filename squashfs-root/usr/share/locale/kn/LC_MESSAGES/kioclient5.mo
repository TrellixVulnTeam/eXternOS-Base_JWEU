��          �      ,      �  	   �  P   �  �   �  R   �  e     P   h  M   �  x     H   �     �     �  4   �     -  
   =     H     `  �  s  ?   �  p   <  }  �  �   +	  �   �	  �   �
  y   #  �   �  �   �  c   4  &   �  }   �     =  7   Z  M   �  (   �         	                                                
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
PO-Revision-Date: 2008-09-28 21:33+0200
Last-Translator: Umesh Rudrapatna <umeshrs@gmail.com>
Language-Team: American English <kde-l10n-kn@kde.org>
Language: kn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 0.2
Plural-Forms: nplurals=2; plural=n != 1;

 
ವಾಕ್ಯಾನ್ವಯ (ಸಿಂಟಾಕ್ಸ್):
 kioclient cat 'url'
# 'url' ನ ಒಳಪಿಡಿಯನ್ನು stdout ಗೆ ಬರೆಯುತ್ತದೆ

 kioclient ನಕಲಿಳುಪು ['src']
#ಬಳಕೆದಾರ ನಿರ್ದಿಷ್ಟ ಸ್ಥಾನಕ್ಕೆ URL 'src' ಅನ್ನು ನಕಲಿಸುತ್ತದೆ.
#'src' ಒಂದು  URLಗಳ ಪಟ್ಟಿಯಾಗಿರಬಹುದು, ಅದು ಇಲ್ಲದಿದ್ದಲ್ಲಿ
#ಒಂದು URL ಅನ್ನು ಕೋರಲಾಗುವುದು.

   kioclient exec .
//ಪ್ರಸ್ತುತ ಕಡತಕೋಶವನ್ನು ತೆರೆಯುತ್ತದೆ. ಬಹೂಪಯುಕ್ತ.

  kioclient exec file:/home/weis/data/test.html
//ಕಡತವನ್ನು ಪೂರ್ವನಿಯೋಜಿತ ನಿಬಂಧನೆಗಳೊಂದಿಗೆ (ಬೈಂಡಿಂಗ್) ತೆರೆಯುತ್ತದೆ

   kioclient exec file:/root/Desktop/emacs.desktop
//ಈಮಾಕ್ಸ್ ಅನ್ನು ಪ್ರಾರಂಭಿಸುತ್ತದೆ

   kioclient exec ftp://localhost/
//ಹೊಸ ಕಿಟಕಿಯೊಂದನ್ನು ತೆರೆಯುತ್ತದೆ

 KIO ಸೇವನಾರ್ಥಿ  move 'src' 'dest'
#URL 'src' ಅನ್ನು 'dest' ಗೆ ಸ್ಥಾನಾಂತರಿಸುತ್ತದೆ.
#   'src' ಒಂದು URL ಗಳ ಪಟ್ಟಿಯಾಗಿರಬಹುದು.
 KIO ಸೇವನಾರ್ಥಿ (ಕ್ಲಯಂಟ್) ಗುಣಗಳ   'url'
# ಗುಣಗಳ ಪರಿವಿಡಿಯೊಂದನ್ನು ತೆರೆಯುತ್ತದೆ

 ಆದೇಶಕ್ಕೆ   ಚರಪರಿಮಾಣಗಳು (ಆರ್ಗ್ಯೂಮೆಂಟ್) ಆದೇಶ (--commands ನೋಡು) ಜಾಲ-ಪಾರದರ್ಶಕ ಕಾರ್ಯಾಚರಣೆಗಳಿಗೆ ಆದೇಶ-ಸಾಲು ಸಲಕರಣೆ ಉದ್ದಿಷ್ಟ URL KIO ಸೇವನಾರ್ಥಿ (ಕ್ಲಯಂಟ್) ಲಭ್ಯವಿರುವ ಆದೇಶಗಳನ್ನು ತೋರಿಸು ಆಕರ  URL ಅಥವಾ URLಗಳು 