��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  =   �     �     �      �       1   *     \  E   r  F   �  �   �  1  �    
                     
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
PO-Revision-Date: 2018-06-29 15:49+0800
Last-Translator: Simon Depiets <sdepiets@gmail.com>
Language-Team: French <kde-francophone@kde.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 S'assure que l'écran est verrouillé avant la mise en veille Verrouiller la session Écran de verrouillage Verrouillage de l'écran activé Écran verrouillé Temps d'attente pour démarrer l'écran de veille Écran déverrouillé Définit le nombre de minutes après lequel l'écran est verrouillé. Définir si l'écran sera verrouillé après le laps de temps défini. Un problème est survenu avec le verrouillage d'écran et il n'est plus possible de le déverrouiller.
Pour le déverrouiller, vous avez besoin de ConsoleKit ou de LoginD,
qui sont introuvables sur votre système. Un problème est survenu avec le verrouillage d'écran et il n'est plus possible de déverrouiller.
Pour déverrouiller, passez dans un terminal virtuel (par exemple Ctrl+Alt+F2),
connectez-vous et exécutez la commande :

loginctl unlock-session %1

Revenez ensuite à la session actuelle (Ctrl+Alt+F%2). Un problème est survenu avec le verrouillage d'écran et il n'est plus possible de le déverrouiller.
Pour le déverrouiller, passez dans un terminal virtuel (par exemple Ctrl+Alt+F2),
connectez-vous en tant que root et exécutez la commande :

# ck-unlock-session <nom-de-la-session>

 