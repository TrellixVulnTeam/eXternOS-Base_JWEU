��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  ?   2
  b   r
  U   �
     +  ,   4     a     h  �   }  
   B     M  "   V      y  	   �  #   �  �   �     i     p     �  
   �  
   �     �     �  c  �  #        @     ]  |   w     �          
  $        D     T         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-04 18:11+0100
Last-Translator: Stefan Asserhäll <stefan.asserhall@bredband.net>
Language-Team: Swedish <kde-i18n-doc@kde.org>
Language: sv
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 "Återuppritning av hela skärmen" kan orsaka prestandaproblem. "Bara om billigt" förhindrar bara söderrivning för ändringar av hela skärmen såsom en video. "Återanvänd skärminnehåll" orsakar svåra prestandaproblem för MESA-drivrutiner. Noggrann Tillåt program att blockera sammansättning Alltid Animeringshastighet: Program kan ange ett tips om att blockera sammansättning när fönstret är öppet.
 Det ger prestandaförsämringar för t.ex. spel.
 Inställningen kan överskridas av fönsterspecifika regler. Automatisk Distinkt Aktivera sammansättning vid start Återuppritning av hela skärmen Omedelbar Behåll miniatyrbilder av fönster: Att alltid behålla miniatyrbilder av fönster stör det minimerade tillståndet hos fönster. Det kan orsaka att fönster inte slutar arbeta när de minimeras. Aldrig Bara för visade fönster Bara om billigt OpenGL 2.0 OpenGL 3.1 EGL GLX Sammansättning med OpenGL (normalvärdet) har tidigare kraschat Kwin.
Det orsakades troligen av ett fel i drivrutinen.
Om du tror att du har uppgraderat till en stabil drivrutin under tiden,
kan du återställa skyddet, men var medveten om att det omedelbart kan orsaka en krasch.
Som alternativ kan du försöka använda gränssnittet XRender istället. Aktivera detektering av OpenGL igen Återanvänd skärminnehåll Återgivningsgränssnitt: Skalningsmetoden "Noggrann" stöds inte av all hårdvara och kan orsaka prestandaförsämringar och återgivningsartefakter. Skalningsmetod: Jämn Jämn (långsammare) Förhindra sönderrivning ("vsync"): Mycket långsam XRender 