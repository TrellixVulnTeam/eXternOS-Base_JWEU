Þ                ì       0  :   1     l     y               ©     ¾  2   Î  @     ¬   B    ï  Ô   ñ  m  Æ  *   4     _     r               ¨     Á  -   ×  $        *    Ê  å   Ð                     
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
PO-Revision-Date: 2018-03-25 11:54+0800
Last-Translator: pan93412 <pan93412@gmail.com>
Language-Team: Chinese <zh-l10n@linux.org.tw>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 2.0
 é²å¥ç¡ç æ¨¡å¼åç¢ºå®è¢å¹å·²éå® éå®å·¥ä½éæ®µ è¢å¹éå®å¨ è¢å¹éå®å·²éå è¢å¹å·²éå® è¢å¹ä¿è­·ç¨å¼é¾æ è¢å¹å·²è§£é¤éå® è¨­å®è¢å¹éå®çå·è¡æéï¼åï¼ã è¨­å®è¢å¹å¤ä¹ä¹å¾è¦éå®ã è¢å¹éå®ç¨å¼å·²æå£ï¼ç¡æ³åè§£é¤éå®ã
è¦è§£éçè©±ï¼å¿é è¦æ ConsoleKit æ LoginDï¼
èéäºé½æ²è¾¦æ³å¨ä½ çé»è¦ä¸æ¾å°ã è¢å¹éå®ç¨å¼å·²æå£ï¼ç¡æ³åè§£é¤éå®ã
è¦è§£éçè©±ï¼è«åæå°èæ¬çµç«¯æ©ï¼æ¯æ¹èªª Ctrl+Alt+F2ï¼ï¼
ç»å¥èªå·±å¸³èå¾å·è¡ä»¥ä¸æä»¤ï¼

loginctl unlock-sessions %1

åååç®åå·è¡çå·¥ä½éæ®µï¼Ctrl+Alt+F%2ï¼ã è¢å¹éå®ç¨å¼å·²æå£ï¼ç¡æ³åè§£é¤éå®ã
è¦è§£éçè©±ï¼è«åæå°èæ¬çµç«¯æ©ï¼æ¯æ¹èªª Ctrl+Alt+F2ï¼ï¼
ä»¥ç®¡çå¡æ¹å¼ç»å¥èªå·±å¸³èå¾å·è¡ä»¥ä¸æä»¤ï¼

# ck-unlock-session <session-name>

 