Þ          ô   %   Ì      `  0   a  .     s  Á     5     H  *   T              H   ³     ü  &     S   *     ~           £     Ä     ã               (  /   ?  -   o  S     *   ñ  *        G  ¢  ß  0   	  9   ³	  á  í	     Ï     è  0   ô  P   %  !   v  T        í  9   ô  m   .          ­  $   É  $   î  ;     *   O     z  -     3   ¹  0   í  ñ     <     <   M  Õ                                           	                                                         
                           (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) A regular expression matching the window title A string matching the window class (WM_CLASS property)
The window class can be found out by running
'xprop | grep WM_CLASS' and clicking on a window
(use either both parts separated by a space or only the right part).
NOTE: If you specify neither window title nor window class,
then the very first window to appear will be taken;
omitting both options is NOT recommended. Command to execute David Faure Desktop on which to make the window appear EMAIL OF TRANSLATORSYour emails Iconify the window Jump to the window even if it is started on a 
different virtual desktop KStart Make the window appear on all desktops Make the window appear on the desktop that was active
when starting the application Matthias Ettrich Maximize the window Maximize the window horizontally Maximize the window vertically NAME OF TRANSLATORSYour names No command specified Richard J. Moore Show window fullscreen The window does not get an entry in the taskbar The window does not get an entry on the pager The window type: Normal, Desktop, Dock, Toolbar, 
Menu, Dialog, TopMenu or Override Try to keep the window above other windows Try to keep the window below other windows Utility to launch applications with special window properties 
such as iconified, maximized, a certain virtual desktop, a special decoration
and so on. Project-Id-Version: kstart
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2007-05-27 15:00+0900
Last-Translator: Yukiko Bando <ybando@k6.dion.ne.jp>
Language-Team: Japanese <kde-jp@kde.org>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.9.1
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
X-Text-Markup: kde4
 (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) ã¦ã£ã³ãã¦ã¿ã¤ãã«ã«ãããããæ­£è¦è¡¨ç¾ ã¦ã£ã³ãã¦ã¯ã©ã¹ (WM_CLASS ãã­ããã£) ã«ãããããæå­å
ã¦ã£ã³ãã¦ã¯ã©ã¹ãç¥ãã«ã¯ âxprop | grep WM_CLASSâ ãå®è¡ã
ã¦ã£ã³ãã¦ãã¯ãªãã¯ãã¾ãã
(ã¹ãã¼ã¹ãæãã§ä¸¡æ¹æå®ããããå³å´ã ãæå®)
æ³¨: ã¦ã£ã³ãã¦ã¿ã¤ãã«ãã¦ã£ã³ãã¦ã¯ã©ã¹ãæå®ããªãå ´åã
ä¸çªæåã«ç¾ããã¦ã£ã³ãã¦ãä½¿ããã¾ãã
ä¸¡æ¹ã®ãªãã·ã§ã³ã®çç¥ã¯æ¨å¥¨ããã¾ããã å®è¡ããã³ãã³ã David Faure ã¦ã£ã³ãã¦ãè¡¨ç¤ºãããã¹ã¯ããã kom@kde.gr.jp,shinobo@leo.bekkoame.ne.jp,ryuk@user.script.nu, fumiaki@okushi.com ã¦ã£ã³ãã¦ãã¢ã¤ã³ã³å å¥ã®ä»®æ³ãã¹ã¯ãããã§èµ·åããã¦ãããã®ã¦ã£ã³ãã¦ã«ç§»å KStart ã¦ã£ã³ãã¦ããã¹ã¦ã®ãã¹ã¯ãããã«è¡¨ç¤º ã¢ããªã±ã¼ã·ã§ã³ãèµ·åããéã«ã¢ã¯ãã£ããªãã¹ã¯ãããã«
ã¦ã£ã³ãã¦ãè¡¨ç¤º Matthias Ettrich ã¦ã£ã³ãã¦ãæå¤§å ã¦ã£ã³ãã¦ãæ°´å¹³ã«æå¤§å ã¦ã£ã³ãã¦ãåç´ã«æå¤§å Taiki Komoda,Noboru Sinohara,Ryuichi Kakuda, Fumiaki Okushi ã³ãã³ããæå®ããã¦ãã¾ãã Richard J. Moore ã¦ã£ã³ãã¦ããã«ã¹ã¯ãªã¼ã³è¡¨ç¤º ã¦ã£ã³ãã¦ãã¿ã¹ã¯ãã¼ã«è¡¨ç¤ºããªã ã¦ã£ã³ãã¦ããã¼ã¸ã£ã«è¡¨ç¤ºããªã ã¦ã£ã³ãã¦ã¿ã¤ã:
Normal (æ¨æº), Desktop (ãã¹ã¯ããã), Dock (ããã¯), 
Toolbar (ãã¼ã«ãã¼), Menu (ã¡ãã¥ã¼), Dialog (ãã¤ã¢ã­ã°), 
TopMenu (ãããã¡ãã¥ã¼) ã¾ãã¯ Override (ãªã¼ãã¼ã©ã¤ã) ã¦ã£ã³ãã¦ãå¸¸ã«åé¢ã«è¡¨ç¤ºããããè©¦ã¿ã ã¦ã£ã³ãã¦ãå¸¸ã«èé¢ã«è¡¨ç¤ºããããè©¦ã¿ã ã¦ã£ã³ãã¦ã®ãã­ããã£ãæå®ãã¦ã¢ããªã±ã¼ã·ã§ã³ãèµ·åããããã®ã¦ã¼ãã£ãªãã£
(ã¢ã¤ã³ã³åãæå¤§åãä»®æ³ãã¹ã¯ãããã®æå®ãã¦ã£ã³ãã¦è£é£¾ãªã©) 