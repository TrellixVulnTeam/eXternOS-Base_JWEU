��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  <   z
  d   �
  P     	   m  '   w     �     �  �   �  
   }     �  "   �     �     �  '   �  �        �     �     �  
   �  
                ;       O     i     �  �   �          -     2     A     _     l         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-05 12:50+0100
Last-Translator: Karl Ove Hufthammer <karl@huftis.org>
Language-Team: Norwegian Nynorsk <i18n-nn@lister.ping.uio.no>
Language: nn
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 19.03.70
Plural-Forms: nplurals=2; plural=n != 1;
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 «Nyoppteikning av fullskjerm» kan føra til ytingsproblem. «Berre ved låg kostnad» hindrar berre rifting for fullskjermsendringar, for eksempel for videoar. «Bruk skjerminnhaldet på nytt» gjev kraftig redusert yting på MESA-drivarar. Nøyaktig Tillat program å blokkera samansetjing Alltid Animasjonsfart: Program kan oppgje eit hint for å blokkera samansetjing når vindauga deira er opne.
 Dette gjer at for eksempel spel kan køyra raskare.
 Innstillinga kan overstyrast av vindaugsspesifikke reglar. Automatisk Skarp Slå på samansetjing ved oppstart Nyoppteikning av fullskjerm Med ein gong Ta vare på miniatyrbilete av vindauge: Å ta vare på miniatyrbilete av vindauge vil alltid øydeleggja for minimeringstilstanden til vindauga. Dette kan føra til at vindauge ikkje set arbeidet i pause når dei vert minimerte. Aldri Berre for viste vindauge Berre ved låg kostnad OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL-samansetjing (standarden) har krasja KWin tidlgere.
Dette kjem truleg av ein feil i drivaren.
Viss du meiner at du i mellomtida har oppgradert til ein stabil drivar,
kan du slå av dette vernet, men ver merksam på at det kan føra til krasj med ein gong.
Elles kan du kanskje bruka XRender-motoren i staden. Slå på OpenGL-oppdaging Bruk skjerminnhaldet på nytt Oppteikningsmotor: Ikkje all maskinvare støttar skaleringsmetoden «Nøyaktig», og det kan føra til dårleg yting og artefaktar ved oppteikning. Skaleringsmetode: Jamn Jamn (tregare) Riftførebygging («vsync»): Svært sakte XRender 