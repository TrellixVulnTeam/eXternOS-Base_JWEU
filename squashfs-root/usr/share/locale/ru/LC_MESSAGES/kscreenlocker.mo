��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  �   �  %   "  #   H  4   l  #   �  6   �  %   �  j   "  ]   �  �  �  S  m
  =  �                     
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
PO-Revision-Date: 2019-07-28 11:37+0300
Last-Translator: Alexander Potashev <aspotashev@gmail.com>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Lokalize 19.07.70
 Обеспечивает блокировку экрана при переходе в ждущий или спящий режим Заблокировать сеанс Блокировщик экрана Включить блокировщик экрана Экран заблокирован Задержка блокировщика экрана Экран разблокирован Определяет, через сколько минут будет заблокирован экран. Будет ли экран заблокирован через выбранное время. Работа блокировщика экрана нарушена, и он не может быть
использован для разблокировки. Разблокирование в обход
блокировщика возможно с использованием приложений
ConsoleKit или LoginD, но они не найдены в этой системе. Для разблокировки экрана переключитесь в виртуальный
терминал (например, Ctrl+Alt+F2), войдите в систему и
выполните команду:

loginctl unlock-session %1

Для возврата в графический режим нажмите Ctrl+Alt+F%2. Для разблокировки экрана переключитесь в виртуальный
терминал (например, Ctrl+Alt+F2), войдите в систему
от имени администратора (root) и выполните команду:

# ck-unlock-session <имя сеанса>

 