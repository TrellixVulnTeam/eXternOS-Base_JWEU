��    �      �  �   �	      �     �     �  
                  $     >     F     a     m     u  
   �     �     �  	   �     �     �     �     �  "   �       T  ,    �     �     �  	   �     �     �     �     �       	         *     C     T     n     �     �     �     �  +   �     �     �     �     �     �     �           ,     1     ?     ]  �   e  O   d     �     �     �     �     �     �     �                ;  !   H     j      }     �     �    �     �     �     �     �     �  
                   "     B     \     t  
   �  
   �     �     �     �     �     �     �     �               %     ,     ?  -   H     v     |  5   �     �     �     �  &   �                    *  �  0              ,     ?  �   O  :   A      |      �      �      �      �      �      �      �   *   �      	!     !     (!  2  7!  B   j"     �"     �"     �"  W   �"     >#  7   L#     �#  -   �#  =   �#  )   $     1$  L   @$  7   �$  -   �$  �   �$  �   �%     a&    e&  !   l'     �'     �'     �'  �  �'     .)     0)     I)  
   V)     a)  !   i)     �)  $   �)     �)     �)  
   �)     �)     �)     *     *     ,*     H*     P*     k*  (   ~*     �*  ^  �*  b  ,     z.     �.     �.     �.     �.     �.     �.     /     &/  +   7/  1   c/  *   �/     �/  	   �/     �/     �/  	   	0  5   0     I0     Z0     c0     j0     {0     �0  (   �0     �0  &   �0  +    1     ,1  =  <1  c   z2     �2     �2     �2     3     3     :3     @3  &   ]3  =   �3     �3     �3     �3  )   4     74     <4  l  O4     �5     �5     �5     �5      6     6     #6     66  '   <6  !   d6     �6     �6     �6     �6  	   �6     �6     7     
7     7     $7  3   27     f7     s7     �7     �7     �7  .   �7     �7  
   �7      8     '8     98     H8  <   X8     �8     �8     �8     �8  �  �8    �<     ?     ?     %?  �   =?  9   $@     ^@     d@     x@     �@     �@     �@     �@  
   �@  ,   �@     �@     A      A  t  -A  \   �B     �B     C     *C  .   :C     iC  T   wC     �C  -   �C  >   D  .   PD     D  [   �D  G   �D  .   /E  �   ^E  �   MF     G  /  G     8H     >H     OH     eH     �   _       *   C      �             t   3       A   M   c   ?   o      }       �   |                   .   d   q   O           )   n   [      �   0   7           <   r   �   �   �       D   R   l   8       5   �       a                �       b   S   W   �             Q                    ,       N   x   =   m   +       v           p   �   �   �   >   X       h       s       �   w   6   "             F       	          %          ~   :       �   1   f   i         B   j           �       T      ]       !              P   Z   g       -   J   �                          y   I   `   �      �   k                  9   �   4   u   K         #       �   &   ^           G      H   �   '   @   \       ;   z   �       (   /   e       U                  �   L   Y   
   $       V   E   {       �          2        % &Arrangement && Access &Closeable &Description: &Desktop &Detect Window Properties &Export &Focus stealing prevention &Fullscreen &Import &Machine (hostname): &Modify... &New... &No titlebar and frame &Position &Single Shortcut &Size &Size && Position &Window matching (c) 2004 KWin and KControl Authors 0123456789-+,xX: <p><h1>Window-specific Settings</h1> Here you can customize window settings specifically only for some windows.</p> <p>Please note that this configuration will not take effect if you do not use KWin as your window manager. If you do use a different window manager, please refer to its documentation for how to customize window behavior.</p> A single shortcut can be easily assigned or cleared using the two buttons. Only shortcuts with modifiers can be used.<p>
It is possible to have several possible shortcuts, and the first available shortcut will be used. The shortcuts are specified using shortcut sets separated by " - ". One set is specified as <i>base</i>+(<i>list</i>), where base are modifiers and list is a list of keys.<br>
For example "<b>Shift+Alt+(123) Shift+Ctrl+(ABC)</b>" will first try <b>Shift+Alt+1</b>, then others with <b>Shift+Ctrl+C</b> as the last one. A&ctive opacity Accept &focus Activit&y All Activities All Desktops Appearance && &Fixes Application settings for %1 Apply Initially Apply Now Autog&roup in foreground Autogroup by I&D Autogroup with &identical Block compositing C&lear Cascade Centered Class: Consult the documentation for more details. Default Delete Desktop Dialog Window Do Not Affect Dock (panel) EMAIL OF TRANSLATORSYour emails Edit Edit Shortcut Edit Window-Specific Settings Edit... Eg. terminals or video players can ask to keep a certain aspect ratio
or only grow by values larger than one
(eg. by the dimensions of one character).
This may be pointless and the restriction prevents arbitrary dimensions
like your complete screen area. Enable this checkbox to alter this window property for the specified window(s). Exact Match Extreme Focus protection Force Force Temporarily High I&nactive opacity Ignore global shortcuts Ignore requested &geometry Import Rules Information About Selected Window Initial p&lacement Internal setting for remembering KWin KWin helper utility KWin tries to prevent windows from taking the focus
("activate") while you're working in another window,
but this may sometimes fail or superact.
"None" will unconditionally allow this window to get the focus while
"Extreme" will completely prevent it from taking the focus. Keep &above Keep &below Low Lubos Lunak M&aximum size M&inimized M&inimum size Machine: Match by primary class name and Match w&hole window class Maximized &horizontally Maximized &vertically Maximizing Move &Down Move &Up NAME OF TRANSLATORSYour names No No Placement Normal Normal Window Obey geometry restrictions On Main Window Override Type Random Regular Expression Remember Remember settings separately for every window Role: Screen Secondary class name  (resulting in term in brackets) Settings for %1 Sh&aded Shortcut Show internal settings for remembering Skip &switcher Skip &taskbar Skip pa&ger Smart Specify how the window property should be affected:<ul><li><em>Do Not Affect:</em> The window property will not be affected and therefore the default handling for it will be used. Specifying this will block more generic window settings from taking effect.</li><li><em>Apply Initially:</em> The window property will be only set to the given value after the window is created. No further changes will be affected.</li><li><em>Remember:</em> The value of the window property will be remembered and every time the window is created, the last remembered value will be applied.</li><li><em>Force:</em> The window property will be always forced to the given value.</li><li><em>Apply Now:</em> The window property will be set to the given value immediately and will not be affected later (this action will be deleted afterwards).</li><li><em>Force temporarily:</em> The window property will be forced to the given value until it is hidden (this action will be deleted after the window is hidden).</li></ul> Specify how the window property should be affected:<ul><li><em>Do Not Affect:</em> The window property will not be affected and therefore the default handling for it will be used. Specifying this will block more generic window settings from taking effect.</li><li><em>Force:</em> The window property will be always forced to the given value.</li><li><em>Force temporarily:</em> The window property will be forced to the given value until it is hidden (this action will be deleted after the window is hidden).</li></ul> Splash Screen Standalone Menubar Substring Match This configuration dialog allows altering settings only for the selected window or application. Find the setting you want to affect, enable the setting using the checkbox, select in what way the setting should be affected and to which value. This helper utility is not supposed to be called directly. Title: Titlebar color &scheme Toolbar Top-Left Corner Torn-Off Menu Type: Under Mouse Unimportant Unknown - will be treated as Normal Window Unmanaged Window Unnamed entry Utility Window When used, a window will receive
all keyboard inputs while it is active, including Alt+Tab etc.
This is especially interesting for emulators or virtual machines.

Be warned:
you won't be able to Alt+Tab out of the window
nor use any other global shortcut (such as Alt+F2 to show KRunner)
while it's active! Whether the settings should affect all windows of the application. Window &class (application): Window &type Window &types: Window caption for the application wide rules dialogEdit Application-Specific Settings Window ro&le: Window role (can be used to select windows by function) Window settings for %1 Window shall (not) appear in the Alt+Tab list Window shall (not) appear in the manager for virtual desktops Window shall (not) appear in the taskbar. Window t&itle: Window title (very specific, can fail due to content changes or translation) Window type (eg. all dialogs, but not the main windows) Window-Specific Settings Configuration Module Windows can ask to appear in a certain position.
By default this overrides the placement strategy
what might be nasty if the client abuses the feature
to unconditionally popup in the middle of your screen. Windows may prevent to get the focus (activate) when being clicked.
On the other hand you might wish to prevent a window
from getting focused on a mouse click. Yes You have specified the window class as unimportant.
This means the settings will possibly apply to windows from all applications. If you really want to create a generic setting, it is recommended you at least limit the window types to avoid special window types. no focus stealing preventionNone s delay width,height x,y Project-Id-Version: KDE 4.1
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-02-14 22:59+0100
Last-Translator: Kiszel Kristóf <kiszel.kristof@gmail.com>
Language-Team: Hungarian <kde-l10n-hu@kde.org>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 % Ig&azítás és elérés &Bezárható &Leírás: &Asztal Ablaktulaj&donságok felismerése &Exportálás A fókuszel&vétel megakadályozása &Teljes képernyő &Importálás &Gépnév: Mó&dosítás… Ú&j… &Nincs címsor és keret &Elhelyezkedés &Egy billentyűkombináció Mé&ret &Méret és elhelyezkedés &Ablakilleszkedés © A KWin és a KControl szerzői, 2004. 0123456789-+,xX: <p><h1>Ablakspecifikus beállítások</h1> Itt lehet beállítani csak egy kijelölt ablakcsoportra érvényes tulajdonságokat. </p> <p>Ezek a beállítások csak akkor érvényesek, ha a KWin van beállítva ablakkezelőnek. Ha más ablakkezelőt használ, nézzen utána annak dokumentációjában, hogy milyen jellemzőket lehet beállítani.</p> A két gomb segítségével könnyen lehet billentyűkombinációt létrehozni és törölni. Csak módosító billentyűt tartalmazó kombinációt lehet használni.<p>
Több kombináció is megadható, a program mindig a sorban legelsőt használja. A kombinációcsoportokat „-” jellel kell elválasztani. Az egyik csoport neve <i>alap</i>+(<i>lista</i>), ahol az alap módosítókat, a lista normál billentyűket tartalmaz.<br>
Például "<b>Shift+Alt+(123) Shift+Ctrl+(ABC)</b>" esetén a program először a <b>Shift+Alt+1</b>-et próbálja, majd sorban a többit, utoljára a <b>Shift+Ctrl+C</b>-t. A&ktív átlátszatlanság &Fókusz elfogadása A&ktivitás Összes aktivitásra Összes asztalra Megjelenés és javítás %1 alkalmazásbeállításai Belső alkalmazás Alkalmazás most Automatikus &csoportosítás az előtérben Automatikus &csoportosítás azonosító alapján Automatikus csoportosítás &azonossággal Kompozitálás blokkolása &Törlés Lépcsőzetesen Középre igazítva Osztály: További részletek a dokumentációban találhatók. Alapértelmezés Törlés Asztal Párbeszédablak Nem befolyásolja Dokkolás (a panelbe) ulysses@kubuntu.org,tszanto@interware.hu Szerkesztés A billentyűkombináció módosítása Az egyedi ablakbeállítások módosítása Szerkesztés… A terminálok és videolejátszók kérhetik egy bizonyos méretarány megtartását
vagy csak egy egynél nagyobb értékkel való növelését (például egy karakter
méreteivel).
Ez értelmetlen lehet és a korlátozás megakadályozhatja bizonyos területek,
vagy akár a teljes képernyőterület használatát. Jelölje be az opciót, ha ezt a tulajdonságot meg szeretné változtatni a kijelölt ablakoknál. Pontos illesztés Rendkívüli Fókuszvédelem Kényszerítés Kényszerítés ideiglenesen Magas I&naktív átlátszatlanság Globális gyorsbillentyűk mellőzése A kért méret és elhelyezkedés figyelmen kívül ha&gyása Szabályok importálása A kijelölt ablak jellemzői Kezdeti e&lhelyezés Az egyenkénti megjegyzés beállításai KWin KWin-segédprogram A KWin megpróbálja megakadályozni az ablakokat a fókusz megszerzésében,
(„aktiválás”) miközben Ön egy másik ablakban dolgozik, ez azonban néha nem
sikerül vagy túl jól sikerül.
A „Nincs” lehetővé teszi az ablaknak a fókusz feltétel nélküli megszerzését,
míg a „Rendkívüli” teljesen megakadályozza a fókusz megszerzésében. A többi ablak fö&lött A többi ablak &alatt Alacsony Lubos Lunak Ma&ximális méret M&inimalizálva M&inimális méret Gép: Illesztés elsődleges osztálynév és Tel&jes ablakosztály illesztése Maximalizálva &vízszintesen Ma&ximalizálva függőlegesen Maximalizálás &Lefelé &Felfelé Kiszel Kristóf,Szántó Tamás Nem Nincs elhelyezés Normál Normál ablak Méret- és elhelyezkedéskorlátozások betartása A főablakra Felülbírálási típus Véletlenszerűen Reguláris kifejezés Megjegyzés A beállítások megjegyzése minden ablaknál Szerepkör: Képernyő másodlagos osztálynév szerint %1 beállításai &Felgördítve Gyorsbillentyű Az egyenkénti megjegyzés beállításainak megjelenítése Kihagyá&s az ablakváltóból Kihagyás a &feladatlistából &Kihagyás a lapozóból Intelligens Adja meg, hogy az ablakjellemzőt hogyan kell értelmezni:<ul><li><em>Ne legyen kihatása:</em> Az ablakjellemzőnél az alapértelmezett kezelés lesz érvényes. Ennek hatására az általánosabb ablakjellemzők nem fognak érvényesülni.</li><li><em>Alkalmazás belül:</em> Az ablakjellemző megkapja a megadott értéket az ablak létrehozásakor, de később már nem lesz érvényesítve.</li><li><em>Megjegyzés:</em> Az ablakkezelő megjegyzi az ablaktulajdonság értékét és az ablak létrehozásakor mindig az utoljára eltárolt értéket fogja alkalmazni.</li><li><em>Kikényszerítés:</em> Az ablaktulajdonság mindig a megadott értéken fog maradni.</li><li><em>Alkalmazás most:</em> Az ablaktulajdonság felveszi most a megadott értéket, de később már nem lesz érvényes (a művelet törlődik).</li><li><em>Kikényszerítés (ideiglenesen):</em> Az ablaktulajdonság értéke meg fog maradni az ablak elrejtéséig (utána a beállítás véglegesen érvényét veszti).</li></ul> Adja meg, hogy az ablaktulajdonságot hogyan kell értelmezni:<ul><li><em>Ne legyen kihatása:</em> Az ablakjellemzőnél az alapértelmezett kezelés lesz érvényes. Ennek hatására az általánosabb ablakjellemzők nem fognak érvényesülni.</li><li><em>Kikényszerítés:</em> Az ablaktulajdonság mindig a megadott értéken fog maradni.</li><li><em>Kikényszerítés (ideiglenesen):</em> Az ablaktulajdonság megmarad, amíg az ablakot el nem rejtik (elrejtés után a beállítás véglegesen érvényét veszti).</li></ul> Nyitóképernyő Önálló menüsor Részszöveg-illesztés Ez a beállítóablak lehetővé teszi egy kiválasztott ablak vagy alkalmazás jellemzőinek beállítását. Keresse ki a beállítandó jellemzőt, jelölje be, majd adja meg a kezelési módot és a konkrét értéket, ha van. Ezt a segédprogramot nem közvetlenül kell elindítani. Cím: &Címsor színséma Eszköztár Bal felső sarok Leválasztható menü Típus: Az egér alatt Nem fontos Ismeretlen - normál ablakként lesz kezelve Nem kezelt ablak Névtelen bejegyzés Eszközablak Ha be van jelölve, az ablak minden billentyűbevitelt megkap
amíg aktív, beleértve az Alt+Tab kombinációt is, ez emulátorok
vagy virtuális gépek esetén lehet érdekes.

Figyelem: amíg a beállítás aktív, nem tud más ablakra váltani az
Alt+Tab megnyomásával vagy más globális gyorsbillentyűt használni
(például Alt+F2 a KRunner megjelenítéséhez)! Ez határozza meg, hogy az alkalmazás összes ablakára érvényes legyen-e a beállítás. Abla&kosztály (alkalmazás): Ablak&típus Ablaktí&pusok: Egyedi alkalmazásbeállítások módosítása Ablaksze&rep: ablakszabály szerint (az ablakok funkció szerinti kiválasztására használható) %1 ablakbeállításai Az ablak (ne) jelenjen meg az ablakváltóban Az ablak (ne) jelenjen meg a virtuális asztalok kezelőjében Az ablak (ne) jelenjen meg a feladatlistában. Ablak&cím: ablakcím (nagyon specifikus, a tartalomváltozások vagy fordítás miatt nem sikerülhet) ablaktípus szerint (például párbeszédablakok, de nem a főablakok) Beállítómodul egyedi ablakbeállításokhoz Az ablakok kérhetik a megjelenést egy bizonyos helyen.
Ez alapértelmezés szerint felülírja az elhelyezési stratégiát
ami csúnya lehet, ha a kliens kihasználja a szolgáltatást és
ablakokat jelenít meg a képernyő közepén. Az ablakok megakadályozhatják a fókuszba kerülést (aktiválást) kattintáskor.
Másrészt talán szeretné megakadályozni egy ablak fókuszba kerülését egérkattintáskor. Igen Azt választotta, hogy az ablakosztály értéke ne legyen figyelembe véve.
Ez azt jelenti, hogy az összes alkalmazás megfelelő szerepkörű ablaka figyelembe lesz véve. Ha általános beállítást szeretne, érdemes lekorlátozni az ablaktípust a speciális ablaktípusok kihagyása érdekében. Nincs  s késleltetés szélesség,magasság x,y 