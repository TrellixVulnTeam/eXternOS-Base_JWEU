��          �   %   �      `  0   a  .   �  s  �  X   5     �     �  *   �     �  H   �     4  &   ;  S   b     �     �      �     �       8   0     i     z  /   �  -   �  S   �  *   C  *   n  �   �  �  1  0   "
  -   S
  "  �
  [   �             )   )     S  M   k     �  (   �  N   �     8     I     Y     x     �  >   �     �  "     -   &  "   T  d   w  /   �  /     �   <                                       	                                                          
                           (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) A regular expression matching the window title A string matching the window class (WM_CLASS property)
The window class can be found out by running
'xprop | grep WM_CLASS' and clicking on a window
(use either both parts separated by a space or only the right part).
NOTE: If you specify neither window title nor window class,
then the very first window to appear will be taken;
omitting both options is NOT recommended. Alternative to <command>: desktop file to start. D-Bus service will be printed to stdout Command to execute David Faure Desktop on which to make the window appear Iconify the window Jump to the window even if it is started on a 
different virtual desktop KStart Make the window appear on all desktops Make the window appear on the desktop that was active
when starting the application Matthias Ettrich Maximize the window Maximize the window horizontally Maximize the window vertically No command specified Optional URL to pass <desktopfile>, when using --service Richard J. Moore Show window fullscreen The window does not get an entry in the taskbar The window does not get an entry on the pager The window type: Normal, Desktop, Dock, Toolbar, 
Menu, Dialog, TopMenu or Override Try to keep the window above other windows Try to keep the window below other windows Utility to launch applications with special window properties 
such as iconified, maximized, a certain virtual desktop, a special decoration
and so on. Project-Id-Version: kdebase-runtime
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2014-10-20 19:46+0000
Last-Translator: Samir Ribić <Unknown>
Language-Team: Bosnian <bs@li.org>
Language: bs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2014-10-21 06:49+0000
X-Generator: Launchpad (build 17203)
Plural-Forms: nplurals=3; plural=n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
 (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) Regularni izraz koji odgovara naslovu prozora String koji odgovara klasi prozora (osobina WM_CLASS)
Klasa prozora se može otkriti izvršavajući naredbu
'xprop | grep WM_CLASS' i klikom na prozor.
NAPOMENA: Ako ne navedete ni naslov ni klasu prozora,
prvi prozor koji se pojavi će biti uzet; ispuštanje
obje opcije NIJE preporučeno. Alternativa naredbi: .desktop fajl za pokretanje. D‑Bus servis će biti ispisan na stdiz. Naredba koju treba izvršiti David Faure Desktop na kojem se prozor treba pojaviti Pretvori prozor u ikonu Idi na prozor i u slučaju da se nalazi na nekom 
drugom virtualnom desktopu. KStart Neka se prozor pojavi na svim desktopima Neka se prozor pojavi na desktopu koji je bio ativan
kada je pokrenut program. Matthias Ettrich Povećaj prozor Maksimizuj prozor horizontalno Maksimizuj prozor vertikalno Nije navedena nijedna naredba Opcioni URL za prosljeđivanje .desktop datoteke, uz --service Richard J. Moore Prikaži prozor na čitavom ekranu Prozor se neće pojaviti na traci sa zadacima Prozor se neće pojaviti na pageru Tip prozora: normalni, površ, sidrište, traka 
alatki, meni, dijalog, glavni meni ili potiskivanje Pokušaj sačuvati prozor iznad ostalih prozora Pokušaj zadržati prozor ispod ostalih prozora Alat za pokretanje programa čiji prozori imaju posebne
osobine, kao npr. pretvoreni u ikone, maksimizirani, poseban
desktop, poseban ukras i slično. 