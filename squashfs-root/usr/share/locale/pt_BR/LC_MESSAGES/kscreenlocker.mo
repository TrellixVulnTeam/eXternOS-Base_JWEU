��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  A   _     �     �     �     �  #   �       4   &  8   [  �   �  $  W  �   |	                     
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
PO-Revision-Date: 2018-05-02 01:04-0300
Last-Translator: Luiz Fernando Ranghetti <elchevive@opensuse.org>
Language-Team: Portuguese <kde-i18n-pt_BR@kde.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
 Garantir que a tela fique bloqueada após o retorno da suspensão Bloquear a sessão Bloqueador de sessão Bloqueio de tela ativo Tela bloqueada Tempo de espera do protetor de tela Tela desbloqueada Define a quantidade de minutos para bloquear a tela. Define se a tela será bloqueada após o tempo indicado. O bloqueio de tela está com problemas e não é possível desbloquear.
Para permitir o desbloqueio, o ConsoleKit ou o LoginD é necessário, mas
nenhum deles pode ser encontrado em seu sistema. O bloqueio de tela está com problemas e não é possível desbloquear.
Para permitir o desbloqueio, mude para um terminal virtual (p.ex. Ctrl+Alt+F2),
faça a autenticação e execute o comando:

loginctl unlock-sessions %1

Depois disso, retorne para a sessão em execução (Ctrl+Alt+F%2). O bloqueio de tela está com problemas e não é possível desbloquear.
Para permitir o desbloqueio, mude para um terminal virtual (p.ex. Ctrl+Alt+F2),
faça a autenticação como root e execute o comando:

# ck-unlock-session <session-name>

 