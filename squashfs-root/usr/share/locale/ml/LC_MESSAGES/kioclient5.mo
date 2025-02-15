��          �            x  	   y  P   �  �   �  R   �  e   �  P   X  M   �  x   �  H   p     �     �     �  
   �              .  !   J  �   l      �   !
  �   �
  k   �  �       �  �   �  ^   ^  )   �  [   �     C  J   `  �   �         	                                                 
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
PO-Revision-Date: 2008-07-11 22:13+0530
Last-Translator: ANI PETER|അനി പീറ്റര്‍ <apeter@redhat.com>
Language-Team: Swathanthra|സ്വതന്ത്ര Malayalam|മലയാളം Computing|കമ്പ്യൂട്ടിങ്ങ് <smc-discuss@googlegroups.com>
Language: ml
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=(n != 1);
 
സിന്റാക്സ്:
   kioclient cat 'url'
            # 'url'-ലുള്ള ഉള്ളടക്കം stdout-ലേക്കു് സൂക്ഷിക്കുന്നു

   kioclient download ['src']
            # ഉപയോക്താവു് ആവശ്യപ്പെടുന്ന സ്ഥാനത്തേക്കു് യുആര്‍എല്‍ 'src' പകര്‍ത്തുന്നു.
            #   'src' യുആര്‍എല്ലുകളുടെ ഒരു പട്ടികയാകുന്നു, ലഭ്യമല്ലെങ്കില്‍
            #   ഒരു യുആര്‍എല്‍ ആവശ്യപ്പെടുന്നതാണു്.

   kioclient exec .
             //  നിലവിലുള്ള തട്ടു് തുറക്കുക. വളരെ സൌകര്യമുള്ളതാകുന്നു.

   kioclient exec file:/home/weis/data/test.html
             // സ്വതവേയുള്ള ബൈന്‍ഡിങ്ങില്ലാതെ ഫയല്‍ തുറക്കുന്നു

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs തുടങ്ങുന്നു

   kioclient exec ftp://localhost/
             // പുതിയ ജാലകം യുആര്‍എല്ലിനൊപ്പം തുറക്കുന്നു

   kioclient move 'src' 'dest'
            # 'src' യുആര്‍എല്‍ 'dest'-ലേക്കു് നീക്കുന്നു.
            #   'src' യുആര്‍എല്ലുകളുടെ ഒരു പട്ടികയാകുന്നു.
   kioclient openProperties 'url'
            # ഗുണഗണങ്ങള്‍ക്കുള്ള മെനു തുറക്കുന്നു

 ആജ്ഞയ്ക്കുള്ള ആര്‍ഗ്യുമെന്റുകള്‍ ആജ്ഞ (--commands കാണുക) ലക്ഷ്യസ്ഥാനത്തിനുള്ള യുആര്‍എല്‍ KIO ക്ലയന്റ് ലഭ്യമായ ആജ്ഞകള്‍ കാണിക്കുക സ്രോതസ്സായ യുആര്‍എല്‍ അല്ലെങ്കില്‍ യുആര്‍എല്ലുകള്‍ 