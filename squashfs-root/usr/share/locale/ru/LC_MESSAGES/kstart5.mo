��            )   �      �  0   �  .   �  s  �  X   e     �     �  *   �           )  H   <     �  &   �  S   �                ,     M     l     �  8   �     �     �  /     -   1  S   _  *   �  *   �  �   	  =  �  0   �
  c       t  �   �  !   R     t  F   �  ;   �               �  A   �  �   �     p     �  9   �  5   �  Q     (   a  p   �  ,   �  :   (  C   c  _   �  
    I     @   \  	  �              
                                        	                                                                                    (C) 1997-2000 Matthias Ettrich (ettrich@kde.org) A regular expression matching the window title A string matching the window class (WM_CLASS property)
The window class can be found out by running
'xprop | grep WM_CLASS' and clicking on a window
(use either both parts separated by a space or only the right part).
NOTE: If you specify neither window title nor window class,
then the very first window to appear will be taken;
omitting both options is NOT recommended. Alternative to <command>: desktop file to start. D-Bus service will be printed to stdout Command to execute David Faure Desktop on which to make the window appear EMAIL OF TRANSLATORSYour emails Iconify the window Jump to the window even if it is started on a 
different virtual desktop KStart Make the window appear on all desktops Make the window appear on the desktop that was active
when starting the application Matthias Ettrich Maximize the window Maximize the window horizontally Maximize the window vertically NAME OF TRANSLATORSYour names No command specified Optional URL to pass <desktopfile>, when using --service Richard J. Moore Show window fullscreen The window does not get an entry in the taskbar The window does not get an entry on the pager The window type: Normal, Desktop, Dock, Toolbar, 
Menu, Dialog, TopMenu or Override Try to keep the window above other windows Try to keep the window below other windows Utility to launch applications with special window properties 
such as iconified, maximized, a certain virtual desktop, a special decoration
and so on. Project-Id-Version: kstart
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-08-25 17:03+0400
Last-Translator: Andrey Cherepanov <skull@kde.ru>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.0
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 © Matthias Ettrich (ettrich@kde.org), 1997-2000 Регулярное выражение, соответствующее заголовку окна Строка, соответствующая классу окна (свойство WM_CLASS)
Класс окна можно определить, запустив команду
«xprop | grep WM_CLASS» и потом щёлкнув на окне.
Примечание: если вы не укажете ни заголовок, ни класс 
окна, будет взято первое же попавшееся окно,
поэтому пропускать оба параметра не рекомендуется. Альтернатива вызова команды <command> - запуск файла .desktop. Вывод службы D-Bus будет направлен в стандартный поток вывода. Выполнить команду David Faure Рабочий стол, на котором появится окно dyp@perchine.com,Hermann.Zheboldov@shq.ru,mokhin@bog.msu.ru Свернуть окно Переключиться на окно, даже если оно запущено
на другом рабочем столе KStart Поместить окно на все рабочие столы Поместить окно на рабочий стол, который был активен
при запуске приложения Matthias Ettrich Распахнуть окно Развернуть окно по горизонтали Развернуть окно по вертикали Денис Першин,Герман Жеболдов,Григорий Мохин Команда не определена Дополнительный URL к <desktopfile> при использовании параметра --service Ричард Дж. Мур (Richard J. Moore) Распахнуть окно на полный экран Окно не показывается на панели задач Окно не показывается в списке окон при переключении Типы окон: обычное (Normal), рабочий стол 
(Desktop), встроенное в панель (Dock), инструмент 
(Tool), меню (Menu), диалог (Dialog), панель меню 
(TopMenu) или перекрытое (Override) Держать окно поверх всех остальных окон Держать окно под остальными окнами Программа для запуска приложений со специальными свойствами окна,
такими как свёрнутое, распахнутое, на определённом рабочем столе 
и так далее. 