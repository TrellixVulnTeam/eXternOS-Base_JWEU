��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  !   �     �     �     �     �     �       *   &  -   Q  �     �   	  �   �                     
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

 Project-Id-Version: kdeorg
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-11-19 23:09
Last-Translator: Guo Yunhe (guoyunhe)
Language-Team: Chinese Simplified
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: crowdin.com
X-Crowdin-Project: kdeorg
X-Crowdin-Language: zh-CN
X-Crowdin-File: /kf5-stable/messages/kde-workspace/kscreenlocker.pot
 保证屏幕在休眠前被锁定 锁定会话 锁屏程序 启用屏幕锁定 屏幕已锁定 屏幕保护程序超时时间 屏幕已解锁 设置屏幕锁定前等待的分钟数。 设置屏幕是否在指定时间后锁定。 锁屏已经损坏，无法正常解锁。
要解锁系统，您需要 ConsoleKit 或者 LoginD，但是无法在系统上找到它们。 锁屏器已损坏无法解锁。
想要解锁请切换到虚拟终端 (例如 Ctrl+Alt+F2)，
登录并执行以下命令：

loginctl unlock-session %1

之后切换回正在运行的会话 (Ctrl+Alt+F%2)。 锁屏器已损坏无法解锁。
想要解锁请切换到虚拟终端 (例如 Ctrl+Alt+F2)，
请以 Root 身份登录并执行以下命令：

# ck-unlock-session <会话名称>

 