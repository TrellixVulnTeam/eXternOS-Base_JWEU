��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  C   1
  j   u
  X   �
     9  *   A     l     q  �   �     W     c     k     �     �      �  �   �     �  !   �     �  
   �  
   �     �     �  K  �     -     J     h  �   �                &     8  
   U     `         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-08-05 09:22+0100
Last-Translator: Iñigo Salvador Azurmendi <xalba@euskalnet.net>
Language-Team: Basque <kde-i18n-doc@kde.org>
Language: eu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 "Pantaila osoa berriz margotzea" performantzia arazoak sor ditzake. "Soilik merketa denean" urradura ekiditen du soilik pantaila osoko aldaketentzako, bideo batena esaterako. "Berrerabili pantailako edukia" performantzia arazo larriak sor ditzake MESA gidariekin. Zehatza Baimendu aplikazioek konposatzea eragoztea Beti Animazioaren abiadura: Aplikazioek argibide bat ezarri dezakete leihoa irekita dagoenean konposatzea eragozteko.
 Honek performantzian hobekuntzak dakartza, adib. jokoetan.
 Ezarpena leihoen berariazko arauek gainezarri dezakete. Automatikoa Zurruna Gaitu konposatzailea abioan Pantaila osoa berriz margotzea Berehalakoa Mantendu leihoen koadro txikiak: Leihoen koadro txikiak gordetzea beti sortzen du leihoen egoera ikonotuarekin interferentzia. Honen ondorioz izan daiteke leihoek beraien lana ez esekitzea ikonotuta daudenean. Inoiz ez Soilik bistaratutako leihoetarako Solik merkea denean OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL konposatzeak (lehenetsia) KWin kraskatu du iraganean.
Segur aski gidari baten akats batek eraginda.
Uste baduzu ordutik hona gidari egonkor batera eguneratu duzula,
babes hau berrezarri dezakezu, baino jakizu honek berehalako kraskadura batera eraman dezakeela!
Bestela, horren ordez XRender bizkarraldekoa erabili dezakezu. Birgaitu OpenGLren detekzioa Berrerabili pantailako edukia Errendatzeko bizkarraldekoa: Eskalatze metodo "Zehatza" ez dute hardware guztiek onartzen eta performatzian atzera pausua eta errendatzean arazoak eragin ditzake. Eskalatzeko metodoa: Leuna Leuna (motelagoa) Urradura ekiditea ("vsync"): Oso motela XRender 