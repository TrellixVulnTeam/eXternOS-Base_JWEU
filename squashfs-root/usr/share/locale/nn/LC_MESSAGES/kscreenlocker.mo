��          �      �       0  :   1     l     y     �     �     �     �  2   �  @     �   B    �  �   �  �  �  =   �  	   �     �     �     �     
     )  +   <  ,   h  �   �  Q  S     �	                     
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
PO-Revision-Date: 2018-03-11 15:36+0100
Last-Translator: Karl Ove Hufthammer <karl@huftis.org>
Language-Team: Norwegian Nynorsk <i18n-nn@lister.ping.uio.no>
Language: nn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 Sikrar at skjermen vert låst før maskina går i kvile/dvale Lås økt Skjermlåsar Skjermlås er slått på Skjermen låst Tid før pauseskjermen startar Skjermen låst opp Skjermen vert låst etter så mange minutt. Vel om skjermen skal låsast etter vald tid. Skjermlåsen er øydelagd, så det er ikkje mogleg å låsa opp skjermen lenger.
For å låsa han opp treng du anten ConsoleKit eller LoginD, og ingen
av desse er tilgjengeleg på systemet. Skjermlåsaren er øydelagd, og det er ikkje mogleg å låsa opp økta automatisk lenger.
For å låsa opp økta manuelt, må du byta til ein virtuell terminal (med for eksempel «Ctrl + Alt + F2»),
logga inn og køyra denne kommandoen:

loginctl unlock-sessions %1

Gå så tilbake til økta som køyrer (med «Ctrl + Alt + F%2»). Skjermlåsen er øydelagd, så det er ikkje mogleg å bruka han til å låsa opp skjermen.
For å låsa opp skjermen, byt til ein virtuell terminal (for eksempel med «Ctrl + Alt + F2»),
logg inn som rotbrukar («root») og køyr denne kommandoen:

# ck-unlock-session <session-name>

 