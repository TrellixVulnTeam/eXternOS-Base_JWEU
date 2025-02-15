��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U    r     �  1   	  -   D	  /  r	  f  �
  Z   	  �   d  +   �  @   !     b    k  "  s  a   �     �  I     B   R  ,   �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-06-07 14:57+0300
Last-Translator: Yasen Pramatarov <yasen@lindeas.com>
Language-Team: Bulgarian <dict@fsa-bg.org>
Language: bg
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.11.4
Plural-Forms: nplurals=2; plural=n != 1;
 &Изход от сесията Р&естартиране на компютъра Изкл&ючване на компютъра <h1>Мениджър на сесии</h1> От тук може да настроите мениджъра на сесии. Става въпрос за записване състоянието на системата при изход и възстановяването му при включване. <ul>
<li><b>Възстановяване на предишната сесия</b> - всички програми, които работят по време на сесията, ще бъдат записани и възстановени при следващото включване в системата.</li>
<li><b>Възстановяване на ръчно запазена сесия</b> - сесията може да се записва по всяко време чрез избиране на операцията "Запис на сесията" от главното меню (К). Това означава, че при следващо включване в системата ще се възстановят само тези, програми, които са работили по време на ръчното записване на сесията.</li>
<li><b>Стартиране с нова сесия</b> - при изход не се записва нищо и съответно при включване в системата се започва с нова, празна сесия.</li>
</ul> Про&грами за изключване при запазване на сесията: Включете тази отметка, ако искате системата да изисква потвърждение при изход. По&твърждение при изход Подразбиращо се действие при изход Общи След изход от сесията обикновено имате няколко възможности. Да се включите като друг потребител, да изключите компютъра или да го рестартирате. В полето може да въведете списък с програми, които да не се записват в сесията и съответно да не се възстановяват при включване в системата (примерно: xterm, xconcole). П&редлагане на възможност за изключване на компютъра При вход Въ&зстановяване на ръчно запазена сесия В&ъзстановяване на предишната сесия &Стартиране с нова сесия 