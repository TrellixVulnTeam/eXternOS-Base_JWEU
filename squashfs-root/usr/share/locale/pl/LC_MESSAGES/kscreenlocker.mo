��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  @   �     �     �     �       %        <  ,   N  5   {  �   �    o  �   �	                     
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
PO-Revision-Date: 2018-04-28 06:41+0100
Last-Translator: Łukasz Wojniłowicz <lukasz.wojnilowicz@gmail.com>
Language-Team: Polish <kde-i18n-doc@kde.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 2.0
 Zapewnia, że ekran zostanie zablokowany zanim zostanie uśpiony Zablokuj sesję Blokowanie ekranu Blokada ekranu włączona Ekran zablokowany Czas oczekiwania do wygaszacza ekranu Ekran odblokowany Ustawia czas, po jakim jest blokowany ekran. Określa czy ekran będzie blokowany po danym czasie. Ekran blokowania jest uszkodzony i odblokowywanie nie jest już możliwe.
Aby go odblokować wymagany jest ConsoleKit lub LoginD
lecz nie można znaleźć żadnego z nich na twoim systemie. Ekran blokowania jest uszkodzony i odblokowywanie nie jest już możliwe.
Aby odblokować przełącz się do wirtualnego terminalu (np. Ctrl+Alt+F2),
zaloguj się i wykonaj polecenie:

loginctl unlock-session %1 

Po tym przełącz się z powrotem do uruchomionej sesji (Ctrl+Alt+F%2). Ekran blokowania jest uszkodzony i odblokowywanie nie jest już możliwe.
Aby odblokować przełącz się do wirtualnego terminalu (np. Ctrl+Alt+F2),
zaloguj się i wykonaj polecenie:

# ck-unlock-session <nazwa-sesji> 

 