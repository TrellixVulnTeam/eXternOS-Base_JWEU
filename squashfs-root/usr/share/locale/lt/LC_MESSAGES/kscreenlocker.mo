��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  9   |     �     �     �     �  #   
     .  0   A  <   r  �   �  �   Z  �   U	                     
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

 Project-Id-Version: l 10n
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-06-21 15:05+0300
Last-Translator: Moo
Language-Team: Lithuanian <kde-i18n-lt@kde.org>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : n%10==0 || (n%100>10 && n%100<20) ? 2 : 3);
X-Generator: Poedit 2.0.6
 Užtikrina, kad ekranas bus užrakintas prieš užmiegant Užrakinti sesiją Ekrano užraktas Ekrano užraktas įgalintas Ekranas užrakintas Ekrano užsklandos skirtasis laikas Ekranas atrakintas Nustato, po kiek minučių ekranas užrakinamas. Galite nustatyti, ar ekranas užsirakins po tam tikro laiko. Ekrano užraktas sugedo, tad atrakinti nebepavyks.
Norinti atrakinti, reikalingas arba ConsoleKit, arba LoginD, tačiau
nei vieno iš jų nepavyko rasti jūsų sistemoje. Ekrano užraktas sugedo, tad atrakinti nebepavyks.
Norėdami atrakinti, persijunkite į virtualų terminalą (pvz., Vald+Alt+F2),
prisijunkite ir įvykdykite komandą:

loginctl unlock-session %1

Tuomet galėsite grįžti prie seanso (Ctrl+Alt+F%2). Ekrano užraktas sugedo, tad atrakinti nebepavyks.
Norėdami atrakinti, persijunkite į virtualų terminalą (pvz., Vald+Alt+F2),
prisijunkite root naudotojo teisėmis ir įvykdykite komandą:

# ck-unlock-session <session-name>

 