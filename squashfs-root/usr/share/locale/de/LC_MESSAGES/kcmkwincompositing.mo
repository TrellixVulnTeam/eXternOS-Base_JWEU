��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  D   #
  �   h
  c   �
     O  /   U     �     �  �   �     �     �      �     �     �  !   �  �        �     �     �  
   �  
   �     �     �  �  �  "   �  !   �     �  �        �     �     �  3   �                   !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-11 12:38+0100
Last-Translator: Burkhard Lück <lueck@hube-lueck.de>
Language-Team: German <kde-i18n-de@kde.org>
Language: de
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 „Vollständiges Neuzeichnen“ kann zu Leistungsproblemen führen. „Nur wenn Aufwand vertretbar“ verhindert nur das Zerreißen bei Änderungen im Vollbildmodus wie zum Beispiel bei einem Video. „Bildschirm-Inhalt wiederverwenden“ führt zu erheblichen Leistungsproblemen bei Mesa-Treibern. Genau Anwendungen erlauben, Compositing zu blockieren Immer Animationsgeschwindigkeit: Anwendungen können die Anweisung geben, Compositing beim Öffnen des Fensters zu blockieren.
Die führt zu besserer Leistung zum Beispiel für Spiele.
Diese Einstellung kann durch fensterspezifische Regeln überschrieben werden. Automatisch Pixelig Compositor beim Start aktivieren Vollständiges Neuzeichnen Sofort Fenster-Vorschaubilder vorhalten: Immer Fenster-Vorschaubilder vorzuhalten beeinträchtigt den minimierten Zustand von Fenstern. Dies kann dazu führen, dass minimierte Fenster nicht aussetzen. Nie Nur für sichtbare Fenster Nur wenn Aufwand vertretbar OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL-Compositing (Voreinstellung) hat KWin in der Vergangenheit zum 
Absturz gebracht. Ursache war sehr wahrscheinlich ein fehlerhafter Treiber.
Wenn Sie glauben, in der Zwischenzeit auf eine stabile Treiberversion 
aktualisiert zu haben, können Sie die Schutzfunktion zurücksetzen. 
Seien Sie sich jedoch im Klaren darüber, dass das zu einem sofortigen Absturz führen kann.
Alternativ können Sie das XRender-Backend verwenden. OpenGL-Erkennung wieder aktivieren Bildschirm-Inhalt wiederverwenden Ausgabemodul: Die Skalierungsmethode „Genau“ wird nicht durch jede Hardware unterstützt und kann zu Leistungseinbußen und Anzeigefehler (Artefakt) beim Rendern führen. Skalierungsmethode: Weich Weich (langsamer) Einzelbild-Zerreißen (Tearing) verhindern (VSync): Sehr langsam XRender 