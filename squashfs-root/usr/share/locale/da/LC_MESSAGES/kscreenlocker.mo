��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  {  �  7   B     z  
   �     �     �     �     �  6   �  :      �   [      �   	                     
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
PO-Revision-Date: 2018-07-18 20:16+0100
Last-Translator: Martin Schlander <mschlander@opensuse.org>
Language-Team: Danish <kde-i18n-doc@kde.org>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 Sikrer at skærmen bliver låst før computeren slumrer Lås session Skærmlås Skærmlås aktiveret Skærmen er låst Tidsudløb på pauseskærm Skærmen er låst op Angiver det antal minutter, hvorefter skærmen låses. Angiver om skærmen skal låses efter det angivne tidsrum. Skærmlåsen er defekt og det er ikke længere muligt at låse op.
For at låse op, kræves enten ConsoleKit eller LoginD, og ingen af
dem kunne findes på dit system. Skærmlåsen er defekt og det er ikke længere muligt at låse op.
For at låse op, kan du skifte til en virtuel terminal (f.eks. Ctrl+Alt+F2),
Logge ind og køre kommandoen:

loginctl unlock-session %1

Bagefter kan du skifte tilbage til den kørende session (Ctrl+Alt+F%2). Skærmlåsen er defekt og det er ikke længere muligt at låse op.
For at låse op, kan du skifte til en virtuel terminal (f.eks. Ctrl+Alt+F2),
logge ind som root og køre kommandoen:

# ck-unlock-session <session-name>

 