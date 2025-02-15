��          �   %   �      `     a     v     �  7  �  �  �  +   �  ^   �     /     ?      T  $   u  /   �     �     �  x   �  �   Z  I   /  M   y     �     �     �     �     	     .	  
   K	  c   V	  �  �	     �     �     �  �   �  �  �  +   @  K   l     �     �  $   �  $     ,   &     S     `  Y   g  �   �  <   �  <   �       	        '     :     Z     t     �  Z   �                                                                   	                           
                              &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option Enter UEFI setup on next restart Enter firmware setup on next restart Failed to request restart to firmware setup: %1 Firmware Setup General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. Next time the computer is restarted, it will enter the UEFI setup screen. Next time the computer is restarted, it will enter the firmware setup screen. O&ffer shutdown options On Login Restart Now Restore &manually saved session Restore &previous session Start with an empty &session UEFI Setup When the computer is restarted the next time, enter firmware setup screen (e.g. UEFI or BIOS setup) Project-Id-Version: kdeorg
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
X-Crowdin-File: /kf5-stable/messages/kde-workspace/kcmsmserver.pot
 结束当前会话(&E) 重启计算机(&R) 关闭计算机(&T) <h1>会话管理器</h1> 您可以在这里配置会话管理器。这包括注销会话时是否需要确认、是否在登录时恢复上次的会话以及是否在退出会话后自动关机等选项。 <ul>
<li><b>恢复上一次会话：</b>将在退出时保存运行中的全部应用程序，然后在下次启动时恢复</li>
<li><b>恢复手动保存的会话：</b>允许任何时候通过 K 菜单的“保存会话”功能保存会话。这意味着目前启动的会话将会在下次启动时重新出现。</li>
<li><b>启动空会话：</b>什么也不保存。下次启动时将会出现空桌面。</li>
</ul> 要从会话中排除的应用程序(&X)： 如果您想会话管理器显示注销确认窗口，请选用此选项。 确认注销(&I) 默认离开选项 在下次重启时进入 UEFI 设置 在下次重启时进入固件设置 请求重新启动到固件设置失败：%1 固件设置 常规 在此您可以选择退出时的默认行为。这仅在通过 KDM 退出时有意义。 您可在此输入用冒号或逗号分隔的应用程序，这些程序将不会被保存到会话中，因此在恢复会话时也不会启动。例如：“xterm:xconsole”或“xterm,xconsole”。 下次重新启动计算机时，它将进入 UEFI 设置。 下次重新启动计算机时，它将进入固件设置。 提供关机选项(&F) 登录时 立即重新启动 恢复手动保存的会话(&M) 恢复上一次会话(&P) 以空会话启动(&S) UEFI 设置 下次重新启动计算机时，进入固件设置（例如 UEFI 设置或 BIOS 设置） 