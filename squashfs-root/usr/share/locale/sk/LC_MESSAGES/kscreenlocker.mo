��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  <   \     �     �     �     �  %   �       B   +  4   n  �   �    A  �   F	                     
                      	               Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock it either ConsoleKit or LoginD is needed, none of
which could be found on your system. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in as root and execute the command:

# ck-unlock-session <session-name>

 Project-Id-Version: kscreenlocker
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-09-15 11:57+0100
Last-Translator: Mthw <jari_45@hotmail.com>
Language-Team: Slovak <kde-i18n-doc@kde.org>
Language: sk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
 Uistí sa, že obrazovka sa zamkne pred prechodom do spánku Zamknúť sedenie Zamykač obrazovky Zamknutie obrazovky povolené Obrazovka zamknutá Časový limit pre šetrič obrazovky Obrazovka odomknutá Nastaví počet minút, po uplynutí ktorých sa obrazovka zamkne. Nastaví, či sa obrazovka zamkne po určenom čase. Zamykač obrazovky je poškodený a odomknutie nie je možné.
Na odomknutie potrebujete buď ConsoleKit alebo LoginD,
žiadny z nich nie je nainštalovaný. Zamykač obrazovky je poškodený a odomknutie nie je možné.
Na odomknutie sa prepnite na virtuálny terminál (napr. Ctrl+Alt+F2),
prihláste sa a spustite príkaz:

loginctl unlock-sessions %1

Potom sa prepnite naspäť na bežiace sedenie (Ctrl+Alt+F%2). Zamykač obrazovky je poškodený a odomknutie nie je možné.
Na odomknutie sa prepnite na virtuálny terminál (napr. Ctrl+Alt+F2),
prihláste sa a spustite príkaz:

loginctl unlock-sessions <session-name>

 