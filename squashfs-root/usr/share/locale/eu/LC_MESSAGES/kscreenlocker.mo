��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  8   V     �     �     �     �  !   �       <   %  @   b  �   �    S  �   a	                     
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
PO-Revision-Date: 2018-06-30 19:37+0100
Last-Translator: Iñigo Salvador Azurmendi <xalba@euskalnet.net>
Language-Team: Basque <kde-i18n-doc@kde.org>
Language: eu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 Lotara joan aurretik pantaila giltzatzen dela ziurtatzen Giltzatu saioa Pantaila giltzatzailea Pantaila giltzatzea gaituta Pantaila giltzatuta Pantaila-babeslearen denbora muga Pantaila giltzapetik askatuta Pantaila giltzatzeko igaro beharreko minutuak ezartzen ditu. Zehaztutako denbora igarota pantaila giltzatuko den ezartzen du. Pantaila giltzatzailea hondatu da eta ezin da giltzapetik askatu.
Giltzapetik askatzeko ConsoleKit edo LoginD behar da, zure
sisteman ez da ez bata ez bestea aurkitzerik izan. Pantaila giltzatzailea hondatu da eta ezin da giltzapetik askatu.
Giltzapetik askatzeko aldatu alegiazko terminal batera (adib. Ktrl+Alt+F2),
hasi saioa eta exekutatu komandoa:

loginctl unlock-session %1

Ondoren itxi saio hau eta itzuli aurreko saiora (Ktrl+Alt+F%2). Pantaila giltzatzailea hondatu da eta ezin da giltzapetik askatu.
Giltzapetik askatzeko aldatu alegiazko terminal batera (adib. Ktrl+Alt+F2),
hasi saioa root gisa eta exekutatu komandoa:

# ck-unlock-session <saio-izena>

 