��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  ?   L     �     �     �     �     �     �  5     ?   >  �   ~  
  4  �   ?	                     
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
PO-Revision-Date: 2018-02-27 08:31+0100
Last-Translator: Vincenzo Reale <smart2128@baslug.org>
Language-Team: Italian <kde-i18n-it@kde.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 Controllare che lo schermo sia bloccato prima della sospensione Blocca sessione Blocco dello schermo Blocco dello schermo abilitato Schermo bloccato Timeout salvaschermo Schermo sbloccato Imposta i minuti dopo i quali lo schermo è bloccato. Imposta se lo schermo sarà bloccato dopo un tempo specificato. Il blocco dello schermo è danneggiato e lo sblocco non è più possibile.
Per sbloccarlo è necessario ConsoleKit o LoginD, ma nessuno di essi è stato individuato sul tuo sistema. Il blocco dello schermo è danneggiato e lo sblocco non è più possibile.
Per sbloccare, passa a un terminale virtuale (ad es. Ctrl+Alt+F2),
accedi ed esegui il comando:

loginctl unlock-session %1

Successivamente, torna alla sessione in esecuzione (Ctrl+Alt+F%2). Il blocco dello schermo è danneggiato e lo sblocco non è più possibile.
Per sbloccare, passa a un terminale virtuale (ad es. Ctrl+Alt+F2),
accedi come root ed esegui il comando:

# ck-unlock-session <nome-sessione>

 