��          t      �         :        L     Y     g     {     �     �  2   �  @   �    "  �  $  a   �  #   
     .  :   L     �  F   �     �  W     �   f    �                      
                      	                Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). Project-Id-Version: kscreenlocker
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-06-12 16:33+0200
Last-Translator: Dimitris Kardarakos <dimkard@gmail.com>
Language-Team: Greek <kde-i18n-el@kde.org>
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 Εξασφαλίζει ότι η οθόνη κλειδώνεται πριν την κοίμηση Κλείδωμα συνεδρίας Κλείδωμα οθόνης Κλείδωμα οθόνης ενεργοποιημένο Οθόνη κλειδωμένη Λήξη χρονικού ορίου οθόνης προφύλαξης Οθόνη ξεκλείδωτη Ορίζει μετά από πόσα λεπτά θα κλειδωθεί η οθόνη. Ρυθμίζει το αν η οθόνη θα κλειδώνει μετά από κάποιο καθορισμένο διάστημα. Το κλείδωμα οθόνης αντιμετωπίζει σοβαρό πρόβλημα και το ξεκλείδωμα δεν είναι πλέον διαθέσιμο.
Για να ξεκλειδώσετε μεταβείτε σε ένα εικονικό τερματικό (π.χ. με Ctrl+Alt+F2),
συνδεθείτε και εκτελέστε την εντολή:

loginctl unlock-session %1

Στη συνέχεια μεταβείτε και πάλι στην εκτελούμενη συνεδρία (Ctrl+Alt+F%2). 