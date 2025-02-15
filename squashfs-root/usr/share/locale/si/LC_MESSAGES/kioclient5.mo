��          �      <      �  	   �  P   �  �     �  �  R   t  e   �  P   -  M   ~  x   �  H   E     �     �  4   �     �  
             %  f  8     �  o   �  �  ,	  �  �
  �   �  �     f   �  �   �  �   �  �   \  "   �  -     n   B     �     �  5   �  A        	                                                              
                                  
Syntax:
   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

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

 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL KIO Client Show available commands Source URL or URLs Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-12-15 18:49+0530
Last-Translator: 
Language-Team: American English <kde-i18n-doc@kde.org>
Language: si
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 0.3
Plural-Forms: nplurals=2; plural=(n != 1);
 
කේත රීතිය:
   kioclient cat 'url'
            # 'url' හි අන්තර්ගතය stdout වෙත ලියයි

   kioclient බෑම ['src']
            # 'src' හි URL ලිපින පරිශීලක විසින් දෙනලද ස්ථානයකට පිටපත් කරයි'.
            #  'src' URL ලිපින ලැයිස්තුවක් විය හැකs, එසේ නොවේ නම්
            #   URL ලිපිනය විමසනු ඇත .

   kioclient exec 'url' ['mimetype']
            # භාවිත යෙදවුමේ 'url' ලිපිනය මගින් දැක්වෙන  ලේඛනය එය KDE සමහ සහයෝගී ව
            #  විවෘත කරයි. ඔබට ඇතැම්විට 'mimetype' මඟහැරීමට සිදුවේ.
            #   මෙම අවස්ථාවේදී mimetype ස්වයංක්‍රීයව නිර්ණය කරයි
            #   ඇත්තෙන්ම  URL ලිපිනය ලේඛනයක ලිපිනයක් හෝ *.desktop 
            #  ගොනුවක් විය හැක 'url' විධානීයද විය හැ.
   kioclient exec .
             // වත්මන් බහාළුම විවෘත කරයි. ඉතා උචිතයි.

   kioclient exec file:/home/weis/data/test.html
             // ගොනු බැඳුම් රහිතව විවෘත කරයි

   kioclient exec file:/root/Desktop/emacs.desktop
             // emacs ආරම්භ කරයි

   kioclient exec ftp://localhost/
             // URL ලිපිනය සමඟ නව කවුළුවක් විවෘත කරයි

   kioclient move 'src' 'dest'
            #  'src'  URL ලිපින 'dest' වෙත ගෙනියයි.
            #   'src' යනු URL ලැයිස්තුවක් විය හැක.
   kioclient වත්කම් විවෘත කිරීම 'url'
            # වත්කම් මෙනුව විවෘත කරයි

 විධානයට තර්ක විධාන  (බලන්න --commands) ජාල-අන්තර්ක්‍රියා සඳහා විධාන රේඛීය ආයුධය ගමනාන්ත URL KIO වැඩසටහන පවතින විධාන පෙන්වයි මූල URL ලිපින හෝ URL ලිපිනයක් 