��            )   �      �  0   �  .   �  s  �  X   e     �     �  *   �           )  H   <     �  &   �  S   �                ,     M     l     �  8   �     �     �  /     -   1  S   _  *   �  *   �  �   	  q  �  1   
  $   E
  K  j
  ]   �          &  #   2     V     v  T   �     �  ,   �  D        P     a     q     �     �     �  U   �     0     A  !   \     ~  Q   �  4   �  3   $  �   X              
                                        	                                                                                    (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) A regular expression matching the window title A string matching the window class (WM_CLASS property)
The window class can be found out by running
'xprop | grep WM_CLASS' and clicking on a window
(use either both parts separated by a space or only the right part).
NOTE: If you specify neither window title nor window class,
then the very first window to appear will be taken;
omitting both options is NOT recommended. Alternative to <command>: desktop file to start. D-Bus service will be printed to stdout Command to execute David Faure Desktop on which to make the window appear EMAIL OF TRANSLATORSYour emails Iconify the window Jump to the window even if it is started on a 
different virtual desktop KStart Make the window appear on all desktops Make the window appear on the desktop that was active
when starting the application Matthias Ettrich Maximize the window Maximize the window horizontally Maximize the window vertically NAME OF TRANSLATORSYour names No command specified Optional URL to pass <desktopfile>, when using --service Richard J. Moore Show window fullscreen The window does not get an entry in the taskbar The window does not get an entry on the pager The window type: Normal, Desktop, Dock, Toolbar, 
Menu, Dialog, TopMenu or Override Try to keep the window above other windows Try to keep the window below other windows Utility to launch applications with special window properties 
such as iconified, maximized, a certain virtual desktop, a special decoration
and so on. Project-Id-Version: kstart
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-02-02 17:37+0300
Last-Translator: Marek Laane <bald@starman.ee>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.0.2
Plural-Forms: nplurals=2; plural=n != 1;
 (C) 1997-2000: Matthias Ettrich (ettrich@kde.org) Akna tiitlile vastav regulaaravaldis String, millele vastab akna klass (omadus WM_CLASS).
Akna klassi leiab, kui käivitada käsk
'xprop | grep WM_CLASS' ja klõpsata aknal
(kasuta käsu mõlemat poolt või ainult paremal antut).
MÄRKUS: kui sa ei määra ei akna tiitlit ega akna klassi,
võetakse esimesena ilmuv aken.
Mõlema määramatajätmine EI OLE soovitatav. <command> alternatiiv: käivitatav desktop-fail. D-Bus-i teenust kuvatakse standardväljundis Käivitatav käsk David Faure Töölaud, millele aken peab ilmuma hasso@linux.ee, bald@starman.ee Ikooni aken Hüppa akna juurde isegi siis, kui see on käivitatud 
teisel virtuaalsel töölaual KStart Aken pannakse ilmuma kõigile töölaudadele Aken ilmub töölauale, mis oli aktiivne rakenduse
käivitamise ajal Matthias Ettrich Maksimeeri aken Maksimeeri aken rõhtsuunas Maksimeeri aken püstsuunas Hasso Tepper, Marek Laane Käsku pole määratud Mittekohustuslik URL <desktopfile>'ile edastamiseks, kui kasutatakse võtit --service Richard J. Moore Aken täisekraanirežiimis Aknale ei anta kirjet tegumiribal Aknale ei anta kirjet peileril Akna tüüp: Normal, Desktop, Dock, Toolbar, 
Menu, Dialog, TopMenu või Override Aken jääb alati ükskõik millise teise akna peale Aken jääb alati ükskõik millise teise akna alla Tööriist rakenduste käivitamiseks eriliste akna omadustega, 
nt. ikoonitud, maksimeeritud, kindlal virtuaalsel töölaual,
erilise dekoratsiooniga jne. 