��    �      T  �   �      `     a     c  
   z     �     �     �     �     �     �     �  
   �     �       	        (     9     ?     Q  "   b     �  T  �     �     �     	          +     G  	   W     a     z     �     �     �     �     �     �  +   �          
               '     5      B     c     h     v     �  �   �  O   �     �     �     �                    .     F     a  !   n     �      �     �     �    �     �     �                 
   &     1     ?     H     b     z  
   �  
   �     �     �     �     �     �     �               (     /     B  -   K     y          �     �  &   �     �     �     �     �    �     �            �   .  :         [     b     j     z     �     �     �  *   �     �     �     �  2  �  B   2     u     �     �     �  -   �  =   �  )   1     [  -   j  �   �  �   f      !        /     7     D  �  H     �     �  
   �                  &   !   2      T   
   a   %   l      �      �       �      �      �      �      �      !  "   !     :!  B  K!     �"     �"     �"     �"     �"     �"     #     $#     @#     U#     q#     �#     �#  	   �#     �#  1   �#     �#     �#  
   �#     �#     $     $  '   '$     O$     V$  &   e$     �$  .  �$  W   �%      &  	   4&  	   >&     H&     [&     b&     �&  !   �&     �&     �&     �&  '   '     8'     ='    X'     ^(     m(     {(     �(     �(     �(     �(  	   �(     �(     �(     �(     )     #)     5)  !   I)     k)     {)     �)  (   �)     �)     �)     �)     �)     �)  2   
*     =*     C*     S*     `*  2   i*     �*     �*     �*     �*  �  �*     �,     �,     �,  �   -  D   �-  
   9.  	   D.     N.     k.     ~.  
   �.  
   �.  -   �.     �.     �.     �.  {  �.  ?   z0     �0  
   �0  
   �0     �0  '   �0  9   '1  &   a1     �1  4   �1  �   �1  �   �2  .  s3     �4  	   �4     �4     �4     z   
   k   �              b   4   y          �   m   9   a   ]           H   X   !       &   D       M       *       |   @   �      Q             W   f       :       ;       S   2              p          K   $             U   3       N   =          o       B   A   w       ^            u       I   7   x   P       g   �      /   l               %       �       R   t   8          T   C   L   v   0   q   [       e          ~       j   )      #   F   (          V      1                     >   {      ?       �              i   .   `       Y           s       �   '   �          \   }   	   O   c   J   -   h      n   Z   <          ,   +   G   "   _       6      E         5   d   r        % &Arrangement && Access &Closeable &Desktop &Detect Window Properties &Export &Focus stealing prevention &Fullscreen &Import &Machine (hostname): &Modify... &New... &No titlebar and frame &Position &Single Shortcut &Size &Size && Position &Window matching (c) 2004 KWin and KControl Authors 0123456789-+,xX: <p><h1>Window-specific Settings</h1> Here you can customize window settings specifically only for some windows.</p> <p>Please note that this configuration will not take effect if you do not use KWin as your window manager. If you do use a different window manager, please refer to its documentation for how to customize window behavior.</p> A&ctive opacity Accept &focus All Desktops Appearance && &Fixes Application settings for %1 Apply Initially Apply Now Autog&roup in foreground Autogroup by I&D Autogroup with &identical Block compositing C&lear Cascade Centered Class: Consult the documentation for more details. Default Delete Desktop Dialog Window Do Not Affect Dock (panel) EMAIL OF TRANSLATORSYour emails Edit Edit Shortcut Edit Window-Specific Settings Edit... Eg. terminals or video players can ask to keep a certain aspect ratio
or only grow by values larger than one
(eg. by the dimensions of one character).
This may be pointless and the restriction prevents arbitrary dimensions
like your complete screen area. Enable this checkbox to alter this window property for the specified window(s). Exact Match Extreme Force Force Temporarily High I&nactive opacity Ignore global shortcuts Ignore requested &geometry Import Rules Information About Selected Window Initial p&lacement Internal setting for remembering KWin KWin helper utility KWin tries to prevent windows from taking the focus
("activate") while you're working in another window,
but this may sometimes fail or superact.
"None" will unconditionally allow this window to get the focus while
"Extreme" will completely prevent it from taking the focus. Keep &above Keep &below Low Lubos Lunak M&aximum size M&inimized M&inimum size Machine: Match w&hole window class Maximized &horizontally Maximized &vertically Maximizing Move &Down Move &Up NAME OF TRANSLATORSYour names No Placement Normal Normal Window Obey geometry restrictions On Main Window Override Type Random Regular Expression Remember Remember settings separately for every window Role: Settings for %1 Sh&aded Shortcut Show internal settings for remembering Skip &switcher Skip &taskbar Skip pa&ger Smart Specify how the window property should be affected:<ul><li><em>Do Not Affect:</em> The window property will not be affected and therefore the default handling for it will be used. Specifying this will block more generic window settings from taking effect.</li><li><em>Force:</em> The window property will be always forced to the given value.</li><li><em>Force temporarily:</em> The window property will be forced to the given value until it is hidden (this action will be deleted after the window is hidden).</li></ul> Splash Screen Standalone Menubar Substring Match This configuration dialog allows altering settings only for the selected window or application. Find the setting you want to affect, enable the setting using the checkbox, select in what way the setting should be affected and to which value. This helper utility is not supposed to be called directly. Title: Toolbar Top-Left Corner Torn-Off Menu Type: Under Mouse Unimportant Unknown - will be treated as Normal Window Unmanaged Window Unnamed entry Utility Window When used, a window will receive
all keyboard inputs while it is active, including Alt+Tab etc.
This is especially interesting for emulators or virtual machines.

Be warned:
you won't be able to Alt+Tab out of the window
nor use any other global shortcut (such as Alt+F2 to show KRunner)
while it's active! Whether the settings should affect all windows of the application. Window &class (application): Window &type Window &types: Window settings for %1 Window shall (not) appear in the Alt+Tab list Window shall (not) appear in the manager for virtual desktops Window shall (not) appear in the taskbar. Window t&itle: Window-Specific Settings Configuration Module Windows can ask to appear in a certain position.
By default this overrides the placement strategy
what might be nasty if the client abuses the feature
to unconditionally popup in the middle of your screen. Windows may prevent to get the focus (activate) when being clicked.
On the other hand you might wish to prevent a window
from getting focused on a mouse click. You have specified the window class as unimportant.
This means the settings will possibly apply to windows from all applications. If you really want to create a generic setting, it is recommended you at least limit the window types to avoid special window types. no focus stealing preventionNone s delay width,height x,y Project-Id-Version: kcmkwinrules
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2011-08-24 09:55+0300
Last-Translator: Maris Nartiss <maris.kde@gmail.com>
Language-Team: Latvian
Language: lv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n != 0 ? 1 : 2);
 % Izvi&etojums un piekļuve &Aizverams &Darbvirsma &Noteikt logu īpašības &Eksportēt &Fokusa zaudēšanas aizsardzība &Pilnekrāns &Importēt &Mašīna (saimniekdatora nosaukums): &Labot  &Jauns Bez &nosaukuma joslas un ietvara &Novietojums &Vienīgais īsceļs &Izmērs Izmēr&s un novietojums &Loga atbilstība (c) 2004 KWin and KControl Authors 0123456789-+,xX: <p><h1>Logu specifiskie iestatījumi</h1> Šeit jūs varat pielāgot logu iestatījumus atsevišķiem logiem.</p> <p>Lūdzu atcerieties ka šī konfigurācija nedarbosies, ja jūsu logu pārvaldnieks nav KWin. Ja jūs lietojat citu logu pārvaldnieku, tad lasiet tā dokumentāciju par to kā pielāgot logu uzvedību.</p> Aktīvā loga &caurspīdība Pieņemt &fokusu Visas darbvirsmas Izskats un &labojumi %1 programmas iestatījumi Pielietot sākotnēji Pielietot tagad Autog&rupēt priekšplānā Autogrupēt pēc I&D Autogrupēt ar &identiskiem Bloķēt kompozitēšanu &Tīrīt Kaskāde Centrēts Klase: Vairāk informācijas atradīsiet dokumentācijā Noklusētais Dzēst  Darbvirsma Dialogu logs Neietekmēt Doks (panelis) atoms@tups.lv, viesturs.zarins@mi.lu.lv Labot  Labot īsceļu Labot logiem specifiskos iestatījumus Rediģēt... Piemēram, termināļi vai video atskaņotāji var jautāt pēc noteiktas malu
attiecības vai palielināt izmērus par vērtībām, kas
lielākas nekā viens (piem., vienas rakstzīmes izmēri).
Tas var būt bezjēdzīgi un ierobežot vajadzīgo piemērošanu, piemēram, lai aizpildītu visu ekrānu. Ieslēdziet šo izvēles rūtiņu, lai norādītajiem logiem izmainītu šo īpašību. Precīza sakritība Ekstrēma Piespiest Piespiest uz laiku Augsta Neaktīvā loga &caurspīdība Ignorēt globālos īsceļus Ignorēt pieprasīto ģ&eometriju Importēt noteikumus Informācija par izvelēto logu Sākotnējais n&ovietojums Internālie iestatījumi ko atcerēties KWin KWin palīdzības utilīta KWin novērst situāciju, kad citi logi saņem fokusu
("aktivizējas"), kamēr jūs darbojaties citā logā,
tomēr tas dažreiz var neizdoties vai arī "pārizdoties".
"Nav" bez nosacījumiem ļaus šim logam saņemt fokusu,
bet "Ekstrēms" to pilnībā liegs. Paturēt &virs Paturēt &zem Zema Lubos Lunak Lielāk&ais izmērs M&inimizēts Mazāka&is izmērs Mašīna: Sakrīt &visa logu klase Maksimizēts &horizontāli Maksimizēts &vertikāli Maksimizēt Pārvietot &lejup Pārvietot &augšup Aivars Šterns, Viesturs Zariņš Nav novietojuma Normāla Normāls logs Pakļauties ģeometrijas ierobežojumiem Galvenajā logā Aizstāšanas tips Nejaušs Regulārā izteiksme  Atcerēties Atcerēties iestatījumus atsevišķi katram logam Loma: %1 iestatījumi S&aritināts Īsceļs Parādīt internālos iestatījumus ko atcerēties Izlaist pā&rslēdzēju Izlais&t uzdevumu joslu Izlaist &lapotāju Gurds Norādiet, kādā veidā izmainīt šo loga īpašību:<ul><li><em>Neietekmēt:</em> Loga īpašība netiks mainīta un tiks lietota noklusētā izturēšanās. Norādot šo, logiem tiks ignorēti citi, vispārīgāki, mainīšanas likumi.</li><li><em>Piespiest:</em> Šī loga īpašības vērtība vienmēr būs šāda.</li><li><em>Piespiest uz laiku</em> Loga īpašības vērtība būs šāda līdz tā noslēpšanai (pēc noslēpšanas šī darbība tiks izņemta).</li></ul> Sākuma ekrāns Pastāvīga izvēlnes josla Daļēja sakritība Šis konfigurācijas logs ļauj mainīt tikai aktīvā loga vai lietotnes iestatījumus. Atrodiet, kuru iestatījumu vēlaties mainīt, izvēles rūtī aktivizējiet to un norādiet, kādā veidā to ietekmēt un kādu vērību izmantot. Šis palīdzības utilīts nav paredzēts lai to izsauktu pa tiešo. Nosaukums: Rīkjosla Augšējais-kreisais stūris Atdalīta izvēlne Tips: Zem peles  Nesvarīgs Nezināms - tiks uzskatīts par normālu logu Nepārvaldīts logs Nenosaukts ieraksts Utilītu logs Kad šī opcija tiks lietota, logs, kamēr
tas ir aktīvs, saņems visu tastatūras ievadi, ieskaitot Alt+Tab,
u.t.t. Īpaši noderīgi tas var būt emulatoriem un virtuālajām mašīnām.

Uzmanieties:
kamēr šī opcija ir aktīva, jūs nevarēsiet izkļūt no loga,
izmantojot Alt+Tab, ne arī izmantot jebkādu citu globālo īsceļu
(piem., Alt+F2, lai parādītu KRunner)! Vai iestatījumiem vajadzētu ietekmēt visus programmas logus. Loga &klase (programma): Loga &tips Logu &tipi %1 loga iestatījumi  Logs (ne)parādīsies Alt+Tab sarakstā Logs (ne)parādīsies virtuālo darbvirsmu pārvaldniekā Logs (ne)parādīsies uzdevumu joslā. Loga &nosaukums:  Logu specifisko iestatījumu konfigurācijas modulis Logi var pieprasīt parādīšanos noteiktā vietā.
Pēc noklusējuma tam ir augstāka prioritāte nekā
novietojuma stratēģijai, kas var būt nepatīkami,
ja klients šo iespēju izmanto ļaunprātīgi, lai
parādītos jūsu ekrāna vidū. Logi var liegt tikt fokusētiem (aktivizētiem), kad uz tiem uzklikšķina.
No otras puses, jūs varētu vēlēties liegt logam saņemt
fokusu, kad tas saņem peles klikšķi. Jūs norādījāt, ka loga klase nav jāņem vērā.
Tas nozīmē, ka šie iestatījumi, iespējams, tiks pielietoti arī citām programmām. Ja tiešām vēlaties šādu vispārīgu iestatījumu, vēlams, lai jūs norādītu vismaz logu tipus, lai izvairītos no tā pielietošanas speciāliem logiem. Nav s aizture platums,augstums x,y 