��            )   �      �  0   �  .   �  s  �  X   e     �     �  *   �           )  H   <     �  &   �  S   �                ,     M     l     �  8   �     �     �  /     -   1  S   _  *   �  *   �  �   	    �     �
  -   �
  ^  �
  [   Q     �  	   �  &   �  %   �       B   .  
   q  +   |  Q   �     �               6  !   Q     s  ;   �     �  $   �  (   �  "     d   A  .   �  .   �  �                 
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
and so on. Project-Id-Version: kstart5
Report-Msgid-Bugs-To: http://bugs.kde.org
PO-Revision-Date: 2017-09-28 17:58+0200
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr@ijekavianlatin
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Environment: kde
 © 1997-2000, Matijas Etrih Regularni izraz za poklapanje naslova prozora Niz za poklapanje klase prozora (svojstvo „WM_CLASS“)
Klasa prozora se može saznati izvršavanjem
„xprop | grep WM_CLASS“ i klikom na prozor
(uzmite ili oba dijela razdvojena razmakom ili samo desni dio).
NAPOMENA: Ako ne zadate ni naslov ni klasu prozora,
biće uzet prvi prozor koji se pojavi.
Izostavljanje obe opcije NIJE preporučljivo. Alternativa naredbi: .desktop fajl za pokretanje. D‑Bus servis će biti ispisan na stdiz. Naredba za izvršavanje David For Površ na kojoj će se prozor pojaviti toptan@kde.org.yu,caslav.ilic@gmx.net Ikonifikuj prozor Skoči na prozor iako je pokrenut na 
na drugoj virtuelnoj površi K‑pokret Prozor treba da se pojavi na svim površima Prozor treba da se pojavi na površi koja
je bila aktivna pri pokretanju programa Matijas Etrih Maksimizuj prozor Vodoravno maksimizuj prozor Uspravno maksimizuj prozor Toplica Tanasković,Časlav Ilić Nema nijedne naredbe Opcioni URL za prosljeđivanje .desktop fajla, uz --service Ričard Mur Prikaži prozor preko cijelog ekrana Prozor se ne pojavljuje u traci zadataka Prozor se ne pojavljuje u listaču Tip prozora: normalni, površ, sidrište, traka 
alatki, meni, dijalog, glavni meni ili potiskivanje Pokušaj da uvijek držiš prozor iznad drugih Pokušaj da uvijek držiš prozor ispod drugih Alatka za pokretanje programa sa posebnim parametrima 
prozora, kao što su ikonizovan, maksimizovan, na određenoj 
virtuelnoj površi, sa posebnom dekoracijom, itd. 