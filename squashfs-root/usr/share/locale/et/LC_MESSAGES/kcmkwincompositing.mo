��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  A   
  s   _
  X   �
     ,  (   3     \     b  �   w  
   R     ]  #   c     �  
   �      �  �   �     h     u     �  
   �  
   �     �     �  ;  �  '        5     P  s   m     �     �     �     	     )     7         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2016-12-09 00:21+0200
Last-Translator: Marek Laane <qiilaq69@gmail.com>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 "Täisekraani ülejoonistamine" võib tekitada jõudlusprobleeme. "Ainult vähese koormuse korral" takistab ainult rebestusi täisekraani muutumise puhul, näiteks video esitamisel. "Ekraanisisu taaskasutamine" tekitab MESA draiverite korral tõsiseid jõudlusprobleeme. Täpne Rakendused võivad komposiiti blokeerida Alati Animatsiooni kiirus: Rakendused võivad anda teada, et komposiit tuleb akna avamisel blokeerida.
See parandab teatavatel juhtudel, näiteks mängudes, tublisti jõudlust.
Seda määratlust võib tühistada aknaspetsiifilise määratlusega. Automaatne Terav Komposiitori lubamine käivitamisel Täisekraani ülejoonistamine Otsekohene Akende pisipiltide säilitamine: Akna pisipildi alati säilitamine läheb vastuollu akende minimeeritud olekuga. See võib tähendada, et aken ei peata tööd, kui see minimeeritakse. Mitte kunagi Ainult kuvatavate akende puhul Ainult vähese koormuse korral OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL komposiit (vaikimisi) on varem tekitanud KWini krahhe.
Tõenäoliselt on tegemist draiveri veaga.
Kui arvad, et oled vahepeal paigaldanud stabiilse draiveri,
võid selle kaitse maha võtta, aga arvesta, et see võib kaasa tuua kohese krahhi!
Teine võimalus on kasutada selle asemel XRenderi taustaprogrammi. Lülita OpenGL-i tuvastamine taas sisse Ekraanisisu taaskasutamine Renderdamise taustaprogramm: Kõik riistvara ei toeta skaleerimisviisi "täpne" ning see võib põhjustada jõudlusprobleeme ja renderdamisvigu. Skaleerimisviis: Sujuv Sujuv (aeglasem) Rebestuse vältimine ("vsync"): Väga aeglane XRender 