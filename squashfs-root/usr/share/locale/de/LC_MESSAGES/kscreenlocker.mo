��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  t  �  G   ;     �     �     �     �     �     �  :   
  G   E  �   �  )  Q    {	                     
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
PO-Revision-Date: 2018-05-28 13:58+0100
Last-Translator: Burkhard Lück <lueck@hube-lueck.de>
Language-Team: German <kde-i18n-de@kde.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 Stellt sicher, dass der Bildschirm vor dem Herunterfahren gesperrt wird Sitzung sperren Bildschirmsperre Bildschirmsperre aktiviert Bildschirm ist gesperrt Bildschirmschoner-Startzeit Bildschirm freigegeben Legt die Zeit fest, nach der der Bildschirm gesperrt wird. Legt fest, ob der Bildschirm nach einer angegebenen Zeit gesperrt wird. Die Bildschirmsperre ist gestört und die Sitzung kann nicht wieder freigegeben
werden. Zum Freigeben wird entweder ConsoleKit oder LoginD benötigt,
beide wurden auf Ihrem System nicht gefunden. Die Bildschirmsperre ist gestört und die Sitzung kann nicht wieder freigegeben
werden. Zum Freigeben, wechseln Sie auf eine Konsole (z. B. Strg+Alt+F2),
melden Sie sich an und führen Sie den Befehl:

loginctl unlock-session %1

aus. Wechseln Sie dann wieder zur laufenden Sitzung (Strg+Alt+F%2). Die Bildschirmsperre ist gestört und die Sitzung kann nicht wieder freigegeben
werden. Zum Freigeben, wechseln Sie auf eine Konsole (z. B. Strg+Alt+F2),
melden Sie sich als Systemverwalter an und führen Sie diesen Befehl:

# ck-unlock-session <session-name>

 