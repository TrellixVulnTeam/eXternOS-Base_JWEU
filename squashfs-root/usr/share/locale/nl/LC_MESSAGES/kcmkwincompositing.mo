��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  R   $
  q   w
  f   �
     P  .   Y     �     �  �   �          �  "   �  $   �     �     �  �        �      �     �  
   �  
   �            �    '   �     �     �  �   �     �     �     �  &   �  
   �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-04 10:55+0100
Last-Translator: Freek de Kruijf <freekdekruijf@kde.nl>
Language-Team: Dutch <kde-i18n-nl@kde.org>
Language: nl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 "Volledig herschrijven van het scherm" kan problemen met de prestatie veroorzaken. "Alleen wanneer goedkoop" voorkomt alleen schuin trekken bij wijzigingen in het volledige scherm zoals een video. "Scherminhoud hergebruiken" veroorzaakt ernstige problemen met de prestatie bij MESA-stuurprogramma's. Accuraat Toepassingen toestaan compositing te blokkeren Altijd Animatiesnelheid: Toepassingen kunnen een hint instellen om compositing te blokkeren wanneer het venster open is.
 Dit brengt prestatieverbeteringen voor bijv. spellen.
 De instelling kan overschreven worden door venster-specifieke regels. Automatisch Helder Compositor activeren bij opstarten Volledig herschrijven van het scherm Onmiddellijk Vensterminiaturen behouden: De vensterminiaturen interfereren altijd met de geminimaliseerde status van vensters. Dit kan resulteren in vensters die hun werk niet onderbreken indien geminimaliseerd. Nooit Alleen voor weergegeven vensters Alleen wanneer goedkoop OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL compositing (de standaardwaarde) heeft KWin in het verleden laten crashen.
Dit was zeer waarschijnlijk vanwege een bug in het stuurprogramma.
Als u denkt dat u intussen hebt opgewaardeerd naar een stabiel stuurprogramma,
dan kunt u deze beveiliging resetten maar wees u bewust dat dit kan resulteren in een onmiddellijke crash!
Anders kunt u de XRender-backend in plaats daarvan gebruiken. Detectie van OpenGL opnieuw inschakelen Scherminhoud hergebruiken Backend voor renderen: Schalingsmethode "Accuraat" wordt niet ondersteund door alle hardware en kan cause regressie in prestaties en weergave van artifacts veroorzaken. Schalingsmethode: Vloeiend Vloeiend (trager) Voorkomen van scheeftrekken ("vsync"): Zeer traag XRender 