��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  �   �  !   '  %   I  4   o  !   �  4   �  #   �  �     �   �  m  r	  #  �
                         
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
PO-Revision-Date: 2018-02-26 07:17+0200
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <kde-i18n-uk@kde.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Lokalize 2.0
 Забезпечує блокування екрана до переходу комп’ютера до стану присипляння Заблокувати сеанс Блокувальник екрана Блокування екрана увімкнено Екран заблоковано Очікування зберігача екрана Екран розблоковано Визначає проміжок часу бездіяльності у хвилинах, перш ніж буде заблоковано екран. Встановлює, чи буде заблоковано екран, якщо реєструватиметься бездіяльність протягом вказаного часу. Засіб блокування екрана не працює, отже розблокувати екран за його допомогою не вдасться.
Щоб розблокувати екран, потрібна програма ConsoleKit або LoginD, але жодної
з цих програм у вашій системі не виявлено. Засіб блокування екрана не працює, отже розблокувати екран за його допомогою не вдасться.
Щоб розблокувати екран, перемкніться на віртуальний термінал (наприклад, натисканням Ctrl+Alt+F2),
увійдіть до системи і віддайте таку команду:

loginctl unlock-session %1

Після цього поверніться до запущеного сеансу (Ctrl+Alt+F%2). Засіб блокування екрана не працює, отже розблокувати екран за його допомогою не вдасться.
Щоб розблокувати екран, перемкніться на віртуальний термінал (наприклад, натисканням Ctrl+Alt+F2),
увійдіть до системи від імені користувача root і віддайте таку команду:

# ck-unlock-session <назва-сеансу>

 