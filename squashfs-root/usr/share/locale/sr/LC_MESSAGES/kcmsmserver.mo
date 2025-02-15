��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  9  r  )   �	  +   �	     
  �  
  @    K   B  �   �  &   <  :   c  
   �  �   �  n  z  '   �       8   /  /   h  )   �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: http://bugs.kde.org
PO-Revision-Date: 2017-09-28 17:58+0200
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Associated-UI-Catalogs: plasma_applet_org.kde.plasma.kicker
X-Environment: kde
 &Окончај текућу сесију &Поново покрени рачунар &Угаси рачунар <qt><h1>Менаџер сесија</h1>Овде можете подесити менаџер сесија. Ту су опције попут да ли треба потврдити излазак из сесије (одјављивање), да ли се сесија обнавља при пријављивању и треба ли рачунар аутоматски и треба ли аутоматски угасити рачунар по напуштању сесије.</qt> <qt><ul><li><b>Поврати претходну сесију:</b> памти се који су све програми активни у тренутку напуштања сесије и поново се покрећу по следећем пријављивању.</li><li><b>Поврати ручно сачувану сесију:</b> у сваком тренутку сесија се може ручно сачувати опцијом <i>Сачувај сесију</i> у К‑менију. Овим ће се тако упамћени програми сами покренути по следећем пријављивању.</li><li><b>Покрени празну сесију:</b> не памти се ништа. По следећем пријављивању површ ће бити празна.</li></ul></qt> Програми које треба &искључити из сесија: Укључите ако желите да менаџер сесија прикаже потврдни дијалог пре него што вас заиста одјави. Потврди &одјављивање Подразумевана опција напуштања Опште Овде можете изабрати шта треба да се догоди након одјављивања. Ове опције важе само ако сте се пријавили из КДМ‑а. <qt>Овде можете унети двотачкама или запетама раздвојен списак програма које не треба уписивати у сесије, и који стога неће бити покренути при враћању сесије. На пример <tt>xterm:xconsole</tt> или <tt>xterm,xconsole</tt>.</qt> Понуди опције &гашења По пријављивању Поврати &ручно сачувану сесију Поврати &претходну сесију Покрени празну &сесију 