��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  E   `     �     �  (   �     �  '        7  A   N  E   �  �   �      �   �	                     
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
PO-Revision-Date: 2018-02-26 18:53+0100
Last-Translator: Josep Ma. Ferrer <txemaq@gmail.com>
Language-Team: Catalan <kde-i18n-ca@kde.org>
Language: ca
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
X-Generator: Lokalize 2.0
 S'està assegurant que la pantalla esdevé bloquejada abans d'adormir Bloqueja la sessió Bloqueig de la pantalla El bloqueig de la pantalla està activat Pantalla bloquejada Temps d'espera de l'estalvi de pantalla Pantalla desbloquejada Estableix els minuts després dels quals es bloqueja la pantalla. Defineix si la pantalla s'ha de bloquejar després del temps indicat. El bloqueig de la pantalla falla i ja no es pot desbloquejar.
Per tal de desbloquejar-lo cal el ConsoleKit o el LoginD, però
cap d'ells s'han trobat en aquest sistema. El bloqueig de la pantalla falla i es desbloqueja si ja no és possible.
Per tal de desbloquejar-lo des d'una consola virtual (p. ex., Ctrl+Alt+F2),
inicieu una sessió i executeu l'ordre:

loginctl unlock-session %1

Després, torneu a la sessió en execució (Ctrl+Alt+F%2). El bloqueig de la pantalla falla i ja no es pot desbloquejar.
Per tal de desbloquejar-lo des d'una consola virtual (p. ex., Ctrl+Alt+F2),
inicieu una sessió com a administrador i executeu l'ordre:

# ck-unlock-session <session-name>

 