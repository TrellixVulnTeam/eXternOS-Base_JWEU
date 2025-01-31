��          �      l      �     �     �       7    �  S  +   $  ^   P     �     �     �     �  x   �  �   d     9     Q     Z     f     �     �  
   �    �     H	     b	     w	  )  �	    �
  +   �  �   �     �  %   �     �  	   �  �   �    �  *   �     �       .     #   D     h     �                         
      	                                                                   &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option Firmware Setup General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restart Now Restore &manually saved session Restore &previous session Start with an empty &session UEFI Setup Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-03-22 06:43+0100
Last-Translator: Burkhard Lück <lueck@hube-lueck.de>
Language-Team: German <kde-i18n-de@kde.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 Aktuelle Sitzung be&enden Rechner &neu starten &Rechner ausschalten <h1>Sitzungsverwaltung</h1> Hier können Sie die Sitzungsverwaltung einrichten. Das schließt Auswahlmöglichkeiten ein wie die eventuelle Bestätigung der Abmeldung (Logout), die Wiederherstellung der vorherigen Sitzung oder das automatische Ausschalten des Rechners nach dem Beenden der Sitzung. <ul>
<li><b>Vorherige Sitzung wiederherstellen:</b> Speichert beim Beenden sämtliche Programme und stellt sie beim nächsten KDE-Start wieder her</li>
<li><b>Manuell gespeicherte Sitzung wiederherstellen:</b> Ermöglicht die Speicherung über den Eintrag „Sitzung speichern“ im Anwendungsstarter-Menü. Das bedeutet: Die gerade laufenden Programme erscheinen beim nächsten KDE-Start erneut.</li>
<li><b>Mit leerer Sitzung starten:</b> Nichts speichern. KDE startet beim nächsten Mal mit freier Arbeitsfläche.</li>
</ul> Von Sitzungen &auszuschließende Programme: Aktivieren Sie diese Einstellung, wenn Sie möchten, dass die Sitzungsverwaltung einen Dialog anzeigen soll, der zur Bestätigung des Abmeldevorgangs auffordert. &Abmeldung bestätigen Standardeinstellung für das Abmelden Firmware-Einrichtung Allgemein Hier können Sie auswählen, was standardmäßig geschehen soll, sobald Sie sich vom System abmelden. Die Einstellungen gelten nur für den Fall, dass Sie sich über KDM angemeldet haben. Hier können Sie eine durch Doppelpunkte oder Kommata getrennte Liste von Programmen anlegen, die nicht in Sitzungen gespeichert und daher auch nicht beim nächsten KDE-Start neu aufgerufen werden sollen. Ein mögliches Beispiel wäre „xterm:konsole“ oder „xterm,xconsole“. &Optionen für das Herunterfahren anbieten Bei der Anmeldung Jetzt neu starten &Manuell gespeicherte Sitzung wiederherstellen &Vorherige Sitzung wiederherstellen Mit &leerer Sitzung starten UEFI-Einrichtung 