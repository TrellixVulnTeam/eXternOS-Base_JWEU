��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  u  �  C   <     �     �  !   �     �  #   �       8     I   M  �   �     I  �   j	                     
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
PO-Revision-Date: 2018-02-26 18:11+0100
Last-Translator: Freek de Kruijf <freekdekruijf@kde.nl>
Language-Team: Dutch <kde-i18n-nl@kde.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 Verzekeren dat het scherm vergrendeld wordt alvorens te gaan slapen Sessie vergrendelen Schermvergrendeling Scherm vergrendeling ingeschakeld Scherm vergrendeld Tijdslimiet op de schermbeveiliging Scherm ontgrendeld Stelt de minuten in waarna het scherm wordt vergrendeld. Stelt in of het scherm vergrendeld zal worden na de gespecificeerde tijd. De vergrendeling van het scherm is gebroken en ontgrendelen is niet meer
mogelijk. Om te ontgrendelen is ConsoleKit of LoginD nodig, die beiden
niet gevonden zijn op uw systeem. De vergrendeling van het scherm is gebroken en ontgrendelen is niet meer mogelijk.
Om te ontgrendelen schakel over naar een virtuele terminal (bijv. Ctrl+Alt+F2),
meldt u aan en voer het commando:

loginctl unlock-session %1

uit. Schakel daar terug naar de actieve sessie (Ctrl+Alt+F%2). De vergrendeling van het scherm is gebroken en ontgrendelen is niet meer mogelijk.
Om te ontgrendelen schakel over naar een virtuele terminal (bijv. Ctrl+Alt+F2),
meldt u aan als root en voer uit het commando:

# ck-unlock-session <session-name>

 