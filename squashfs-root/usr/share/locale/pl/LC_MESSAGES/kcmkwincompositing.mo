��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  I   t
  {   �
  T   :  	   �  ,   �     �     �  �   �     �     �  %   �     �     �       �   #     �     �     �  
     
   !     ,     0  V  4     �  !   �     �  �   �     {     �     �  .   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-13 10:12+0100
Last-Translator: Łukasz Wojniłowicz <lukasz.wojnilowicz@gmail.com>
Language-Team: Polish <kde-i18n-doc@kde.org>
Language: pl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 19.03.70
 "Przemalowania całego ekranu" może powodować problemy z wydajnością. "Tylko gdy niekosztowne" zapobiega smużeniu, gdy cały ekran ulega ciągłym zmianom, tak jak np. przy oglądaniu filmów. "Użyj ponownie zawartości ekranu" powoduje poważne problemy na sterownikach MESA. Dokładny Zezwalaj aplikacjom na blokowanie kompozycji Zawsze Szybkość animacji: Aplikacje mogą ustawić wskazówkę o blokowaniu kompozycji, gdy okno jest otwarte.
 Daje to wzrost wydajności np. dla gier.
 Ustawienia wyjątkowe dla okna mają pierwszeństwo przed tymi. Samoczynnie Szybki Włącz kompozytora przy uruchomieniu Przemalowania całego ekranu Natychmiastowe Przechowuj miniatury okien: Przechowywanie miniatury dla każdego okna jest w sprzeczności ze stanem zminimalizowanym okien. Może to oznaczać, że okna nie wstrzymają swojej pracy, gdy będą zminimalizowane. Nigdy Tylko dla pokazywanych okien Tylko gdy niekosztowne OpenGL 2.0 OpenGL 3.1 EGL GLX Kompozycje OpenGL wywołały usterkę KWin w przeszłości.
Najprawdopodobniej powodem był błąd w sterowniku.
Włącz wykrywanie OpenGL, gdy uważasz, że w międzyczasie,
uaktualniłeś sterowniki do bardziej stabilnych, jednak miej na uwadze, że może to natychmiastowo wywołać usterkę!
Alternatywnie, możesz użyć silnika XRender. Włącz wykrywanie OpenGL Użyj ponownie zawartości ekranu Silnik wyświetlania: Sposób skalowania "Dokładny" nie jest obsługiwany przez wszystkie urządzenia i może powodować spadki wydajności wraz z zakłóceniami w wyświetlaniu. Sposób skalowania: Gładki Płynny (wolniejszy) Zapobiegaj smużeniu (synchronizacja pionowa): Bardzo wolne XRender 