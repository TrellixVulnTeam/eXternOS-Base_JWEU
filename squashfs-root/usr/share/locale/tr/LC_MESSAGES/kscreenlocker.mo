��          t      �         :        L     Y     g     {     �     �  2   �  @   �    "  p  $  B   �     �     �     �               <  @   S  F   �    �                      
                      	                Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-06-08 12:16+0000
Last-Translator: Mesutcan <mesutcank@gmail.com>
Language-Team: Turkish <kde-l10n-tr@kde.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 1.5
 Uykuya geçmeden önce ekranın kilitlendiğinden emin olmak için Oturumu Kilitle Ekran Kilitleyici Ekran kilidi etkin Ekran kilitlendi Ekran koruyucu zaman aşımı Ekran kilidi açıldı Ekran kilidinin kaç dakika sonra başlatılacağını belirler. Ekran kilidinin belirtilen zaman kadar sonra etkin olmasını ayarlar. Ekran kilitleyici bozuk olduğundan kilidi açmak artık mümkün değildir.
Kilidi açmak için bir sanal uçbirim açın (örn. Ctrl+Alt+F2),
oturum açın ve komut çalıştırın:

loginctl unlock-sessions %1

Ardından çalışan oturuma geri dönün (Ctrl+Alt+F%2). 