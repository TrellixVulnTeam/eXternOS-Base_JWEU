��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  E   o     �     �     �     �  $   �     #  2   ;  3   n  �   �  �   O  �   E	                     
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
PO-Revision-Date: 2018-03-18 16:54+0200
Last-Translator: Tommi Nieminen <translator@legisign.org>
Language-Team: Finnish <kde-i18n-doc@kde.org>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
X-POT-Import-Date: 2012-12-01 22:22:27+0000
 Varmistaa näytön lukituksen valmius- tai lepotilaan siirryttäessä Lukitse istunto Näyttölukko Näyttölukko käytössä Näyttö lukittu Näytönsäästäjän aktivointiaika Näytön lukitus avattu Asettaa minuutteina rajan näytön lukitsemiselle. Asettaa, lukitaanko näyttö määräajan jälkeen. Näyttölukko on rikki eikä avaaminen ole enää mahdollista.
Lukituksen avaamiseksi tarvitaan joko ConsoleKit tai LoginD,
joita kumpaakaan ei löytynyt järjestelmästä. Näyttölukko on rikki eikä avaaminen ole enää mahdollista. Siirry
virtuaalipäätteeseen (esim. Ctrl+Alt+F2), kirjaudu ja suorita
komento:

loginctl unlock-session %1

minkä jälkeen voit vaihtaa takaisin nykyiseen istuntoon (Ctrl+Alt+F%2). Näyttölukko on rikki eikä avaaminen ole enää mahdollista.
Siirry virtuaalipäätteeseen (esim. Ctrl+Alt+F2), kirjaudu
sisään pääkäyttäjänä ja suorita komento:

# ck-unlock-session <istunnon-nimi>

 