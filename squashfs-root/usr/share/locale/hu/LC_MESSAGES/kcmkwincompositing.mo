��             +         �  6   �  M      K   N     �     �     �  	   �     �     �     �     �       �        �     �     �  
   �  
   �     �       E  5     {     �     �  w   �     7     E     L     \  	   z     �  �  �  M   	  �   a	  �   �	     m
     t
     {
     �
     �
  $   �
      �
     �
  %   �
  �        �  !   �       
     
         +     /  Q  3  &   �  #   �     �  �   �     i     {     �     �     �     �                                      
                                                                                            	              "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Always Animation speed: Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: KDE 4.2
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-02-24 22:17+0100
Last-Translator: Kiszel Kristóf <kiszel.kristof@gmail.com>
Language-Team: Hungarian <kde-l10n-hu@kde.org>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 A „Teljes színtér újrarajzolása” teljesítményproblémákat okozhat. A „Csak ha olcsó” csak a teljes képernyős alkalmazásoknál, például videolejátszásnál akadályozza meg a kép szétesését. A „Képernyőtartalom újrahasználata” komoly teljesítményproblémákat okozhat MESA illesztőprogram használata esetén. Pontos Mindig Animálási sebesség: Automatikus Gyors Kompozitor bekapcsolása induláskor Teljes színtér újrarajzolása Azonnali Ablakok bélyegképének megtartása: Az ablakok bélyegképének megtartása kölcsönhatásba léphet az ablak minimalizált állapotával. Ez okozhatja azt, hogy az ablak nem függeszti fel a működését minimalizált állapotban. Soha Csak a megjelenített ablakokról Csak ha olcsó OpenGL 2.0 OpenGL 3.1 EGL GLX Az (alapértelmezett) OpenGL a KWin összeomlását okozta régebben.
Ezt valószínűleg az illesztőprogram hibája okozta.
Ha úgy gondolja, hogy időközben egy stabil illesztőprogramra frissített,
eltávolíthatja ezt a védelmet, ez azonban azonnali összeomlást is okozhat!
Alternatívaként használhatja az XRender modult is. OpenGL felismerés újra bekapcsolása Képernyőtartalom újrahasználata Renderelő modul: A „Pontos” nagyítási módot nem minden hardver támogatja, ezért teljesítményproblémákat és renderelési hibákat okozhat. Nagyítási mód: Sima Sima (lassabb) Szakadás megelőzés (VSync): Nagyon lassú XRender 