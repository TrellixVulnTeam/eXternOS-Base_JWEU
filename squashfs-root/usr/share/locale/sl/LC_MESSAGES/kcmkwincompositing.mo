��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  S   X
  x   �
  ^   %  	   �  *   �     �     �  �   �  	   �     �  (   �      �     �     �  �   �     �     �  (   �  
   �  
   �     �     �  M  �  #   E     i     �  }   �          ,     3  !   I     k     y         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-01-11 20:57+0100
Last-Translator: Andrej Mernik <andrejm@ubuntu.si>
Language-Team: Slovenian <lugos-slo@lugos.si>
Language: sl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=4; plural=(n%100==1 ? 1 : n%100==2 ? 2 : n%100==3 || n%100==4 ? 3 : 0);
 »Ponovni izrisi celotnega zaslona« lahko povzroči težave s hitrostjo delovanja. "Samo, če ne zmanjša hitrosti delovanja" preprečuje trganje samo za celozaslonske spremembe (npr. ob gledanju videa). »Znova uporabi vsebino zaslona« ima velike težave s hitrostjo delovanja na gonilnikih MESA. Natančno Dovoli programom, da blokirajo skladnjo 3D Vedno Hitrost animacije: Programi lahko nastavijo namig in blokirajo skladnjo 3D, ko so odprti.
 To lahko na primer izboljša hitrost delovanja iger.
 Nastavitev lahko prepišejo posebne okenske nastavitve. Samodejno Ostro Omogoči upravljalnik skladnje ob zagonu Ponovni izrisi celotnega zaslona Hipna Ohrani sličice oken: Ohranjevanje sličic oken je vedno v sporu s skrčenim stanjem oken. To lahko povzroči, da se okna ne prestavijo v pripravljenost, ko so skrčena. Nikoli Samo za prikazana okna Samo, če ne zmanjša hitrosti delovanja OpenGL 2.0 OpenGL 3.1 EGL GLX Skladnja 3D OpenGL (privzeta) je v preteklosti povzročila sesutje KWin-a.
Vzrok je najverjetneje hrošč v gonilniku za grafično kartico.
Če ste med tem nadgradili gonilnik in menite, da je stabilen,
lahko ponastavite to zaščito. Zavedajte se, da to lahko povzroči takojšnje sesutje!
Druga možnost je uporaba zaledja XRender. Znova omogoči zaznavanje OpenGL-ja Znova uporabi vsebino zaslona Izrisovalno zaledje: Načina umerjanja "natančno" ne podpira vsa strojna oprema, zato lahko upočasni delovanje ali povzroči napake izrisovanja. Metoda umerjanja: Gladko Gladko (počasnejše) Preprečevanje trganja ("vsync"): Zelo počasna XRender 