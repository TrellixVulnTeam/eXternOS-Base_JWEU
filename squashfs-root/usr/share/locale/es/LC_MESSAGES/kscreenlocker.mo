��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  q  �  8   8     q     �     �     �  #   �     �  8     ?   ?  �     '  ,  �   T	                     
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

 Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-03-20 22:04+0100
Last-Translator: Eloy Cuadra <ecuadra@eloihr.net>
Language-Team: Spanish <kde-l10n-es@kde.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 Asegurando que la pantalla se bloquea antes de suspender Bloquear la sesión Bloqueador de pantalla Bloqueo de pantalla activado Pantalla bloqueada Tiempo de espera del salvapantallas Pantalla desbloqueada Fija los minutos tras los que se bloqueará la pantalla. Establece si la pantalla se bloqueará tras el tiempo indicado. El bloqueador de pantalla está dañado y ya no se puede desbloquear.
Para desbloquear son necesarios ConsoleKit o LoginD, pero ninguno
de ellos se encuentra en su sistema. El bloqueador de pantalla está dañado y ya no se puede desbloquear.
Para desbloquear, cambie a un terminal virtual (por ejemplo, Ctrl+Alt+F2),
inicie sesión allí y ejecute la orden:

loginctl unlock-session %1

A continuación, vuelva a cambiar a la sesión que estaba usando (Ctrl+Alt+F%2). El bloqueador de pantalla está dañado y ya no se puede desbloquear.
Para desbloquear, cambie a un terminal virtual (por ejemplo, Ctrl+Alt+F2),
inicie sesión allí como root y ejecute la orden:

# ck-unlock-session <nombre-de-la-sesión>

 