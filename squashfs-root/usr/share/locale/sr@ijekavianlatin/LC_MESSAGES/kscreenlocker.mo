��          t      �         :        L     Y     g     {     �     �  2   �  @   �    "    $  9   1     k     }     �     �     �     �  2   �  6     	  V                      
                      	                Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). Project-Id-Version: kscreenlocker
Report-Msgid-Bugs-To: http://bugs.kde.org
PO-Revision-Date: 2017-06-10 21:26+0200
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr@ijekavianlatin
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Environment: kde
 Obezbeđuje zaključavanje ekrana pre odlaska na spavanje Zaključaj sesiju Zaključavač ekrana Zaključavanje ekrana aktivno Ekran zaključan Prekovreme čuvara ekrana Ekran otključan Broj minuta posle kojeg će ekran biti zaključan. Da li će ekran biti zaključan posle zadatog vremena. Zaključavač ekrana je pokvaren i otključavanje više nije moguće.
Da biste otključali, pređite na virtuelni terminal (npr. Ctrl+Alt+F2),
prijavite se i izvršite naredbu:

loginctl unlock-session %1

Potom se prebacite nazad na sesiju u pogonu (Ctrl+Alt+F%2). 