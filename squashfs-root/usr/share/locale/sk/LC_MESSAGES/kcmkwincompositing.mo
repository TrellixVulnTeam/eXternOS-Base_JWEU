��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  F   ;
  Y   �
  ^   �
     ;  ,   C     p     v  �   �     ^     k  "   r     �  
   �     �  �   �     ~     �     �  
   �  
   �     �     �  X  �     '     F     e  �   {                    2     Q     _         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-16 19:39+0100
Last-Translator: Mthw <jari_45@hotmail.com>
Language-Team: Slovak <kde-i18n-doc@kde.org>
Language: sk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.1
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
 "Prekreslenie celej obrazovky" môže spôsobiť problémy s výkonom. "Iba ak to nie je náročné" iba zabraňuje trhaniu pre zmeny celej obrazovky ako video. "Znovu použiť obsah obrazovky" spôsobuje vážne problémy s výkonom na MESA ovládačoch. Presná Umožniť aplikáciám blokovať kompozíciu Vždy Rýchlosť animácie: Aplikácie môžu poslať náznak na zablokovanie kompozície, ak je otvorení okno.
 Toto prinesie výkonnostné zlepšenie napríklad pre hry.
 Nastavenie môže byť prebité špecifickým nastavením okna. Automatické Ostrá Povoliť efekty plochy pri štarte Premaľovania plnej scény Okamžitá Ponechať náhľady okien: Ponechanie miniatúry okna vždy interferuje s minimalizovaným stavom okna. Toto môže mať za následok, že okná nepozastavia svoju činnosť pri minimalizovaní. Nikdy Len pre zobrazené okná Iba ak jednoduché OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL kompozícia (predvolená) zhodila KWin v minulosti.
Bolo to pravdepodobne kvôli chybe ovládača.
Ak si myslíte, že ste rozumne aktualizovali ovládač na stabilný,
môžete vynulovať túto ochranu, ale majte na pamäti, že to môže
mať za následok okamžitý pád!
Alternatívne môžete použiť namiesto toho backend XRender. Znovu povoliť detekciu OpenGl Znovu použiť obsah obrazovky Renderovací backend: Metóda škálovania "Presná" nie je podporovaná na každom hardvéri a môže spôsobiť zníženie výkonu a chyby vykresľovania. Metóda škálovania: Jemná Jemná (pomalšia) Zabránenie trhaniu ("vsync"): Veľmi pomaly XRender 