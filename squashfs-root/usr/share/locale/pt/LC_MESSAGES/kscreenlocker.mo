��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  8   �     �     �     �       "   %     H  :   [  9   �  �   �  "  �  �   �	                     
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
PO-Revision-Date: 2018-02-26 10:13+0000
Last-Translator: José Nuno Coelho Pires <zepires@gmail.com>
Language-Team: Portuguese <kde-i18n-pt@kde.org>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-POFile-SpellExtra: DPMS unlock loginctl sessions session ck ConsoleKit
X-POFile-SpellExtra: LoginD
 Garante que o ecrã fica bloqueado antes de se suspender Bloquear a Sessão Bloqueio do Ecrã Bloqueio do ecrã activo Ecrã bloqueado Tempo-limite do protector do ecrã Ecrã desbloqueado Define os minutos, após os quais o ecrã será bloqueado. Define se o ecrã será bloqueado após o tempo indicado. O bloqueio de ecrã está com problemas, sendo que não é possível mais desbloquear.
Para poder desbloquear, será necessário o ConsoleKit ou o LoginD, sendo que nenhum
foi encontrado no seu sistema. O bloqueio de ecrã está com problemas, sendo que não é possível mais desbloquear.
Para poder desbloquear, mude para um terminal virtual (p.ex. Ctrl+Alt+F2),
autentique-se e execute o comando:

loginctl unlock-session %1

Depois disso, volte para a sessão em execução (Ctrl+Alt+F%2). O bloqueio de ecrã está com problemas, sendo que não é possível mais desbloquear.
Para poder desbloquear, mude para um terminal virtual (p.ex. Ctrl+Alt+F2),
autentique-se e execute o comando:

# ck-unlock-session <nome-sessão>

 