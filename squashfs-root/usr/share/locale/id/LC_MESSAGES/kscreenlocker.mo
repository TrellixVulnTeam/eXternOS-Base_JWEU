��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  Y  �  9      
   Z     e     t     �     �     �  '   �  @   �  �   /    �  �   �                     
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
PO-Revision-Date: 2019-05-26 09:50+0700
Last-Translator: Wantoyo <wantoyek@gmail.com>
Language-Team: Indonesian <kde-i18n-doc@kde.org>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 Pastikan layar tersebut telah dikunci sebelum pergi tidur Sesi Kunci Pengunci Layar Kunci layar difungsikan Layar dikunci Batas waktu screensaver Layar dilepas-kunci Setelan menit sesudahnya layar dikunci. Setelan apakah layar akan dikunci sesudah waktu yang ditentukan. Pengunci layar telah rusak dan plepasan-kunci tidaklah memungkinkan lagi.
Agar bisa melepas-kuncinya diperlukanlah baik itu ConsoleKit atau LoginD,
yang tidak terdapat pada sistemmu. Pengunci layar telah rusak dan pelepasan-kunci tidaklah memungkinkan lagi.
Agar bisa melepas-kunci, beralihlah ke terminal virtual (mis. Ctrl+Alt+F2),
login dan exekusi perintah:

loginctl unlock-session %1

Kemudian beralih kembali ke sesi yang berjalan (Ctrl+Alt+F%2). Pengunci layar telah rusak dan pelepasan-kunci tidaklah memungkinkan lagi.
Agar bisa melepas-kunci, beralihlah ke terminal virtual (mis. Ctrl+Alt+F2),
login sebagai root dan exekusi perintah:

# ck-unlock-session <session-name>

 