��          t      �         :        L     Y     g     {     �     �  2   �  @   �    "  �  $  B   �               -     F  &   W     ~  B   �  3   �  �                         
                      	                Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-06-04 13:33+0100
Last-Translator: Andrej Mernik <andrejm@ubuntu.si>
Language-Team: Slovenian <lugos-slo@lugos.si>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n%100==1 ? 1 : n%100==2 ? 2 : n%100==3 || n%100==4 ? 3 : 0);
X-Generator: Lokalize 2.0
 Zagotavljanje, da se zaslon zaklene pred prehodom v pripravljenost Zakleni sejo Zaklep zaslona Zaklep zaslona omogočen Zaklenjen zaslon Časovni pretek ohranjevalnika zaslona Odklenjen zaslon Nastavitev števila minut, ki pretečejo preden se zaslon zaklene. Nastavi ali bo zaslon po navedenem času zaklenjen. Zaklep zaslona je pokvarjen, zato odklep ni več mogoč.
Za odklep preklopite v navidezni terminal s tipkovno bližnjico Ctrl+Alt+F2,
se prijavite in izvedite ukaz:

loginctl unlock-session %1

Zatem preklopite nazaj v tekočo sejo (Ctrl+Alt+F%2). 