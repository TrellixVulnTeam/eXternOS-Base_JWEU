��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  9   *
  \   d
  J   �
       (        =     C  �   X  
        #     (     H     `     n  �   �     .     5     K  
   c  
   n     y     }  n  �     �          &  s   :     �     �     �  $   �     �              !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-12-06 20:26+0100
Last-Translator: Martin Schlander <mschlander@opensuse.org>
Language-Team: Danish <kde-i18n-doc@kde.org>
Language: da
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 2.0
 "Hele skærmen gentegnes" kan give problemer med ydelsen. "Kun når det er billigt" forhindrer kun tearing ved fuldskærm-ændringer, såsom en video. "Genbrug skærmindhold" giver alvorlige ydelsesproblemer med MESA-drivere. Præcis Tillad programmer at blokere compositing Altid Animationshastighed: Programmer kan give et vink for at blokere compositing når vinduet er åbent.
Det giver ydelsesforbedringer f.eks. til spil.
Denne indstilling kan tilsidesættes af vinduesspecifikke regler. Automatisk Klar Aktivér compositor ved opstart Hele skærmen gentegnes Øjeblikkelig Behold miniaturer af vinduer: Altid at beholde vinduesminiaturen interfererer med vinduers minimerede tilstand. Dette kan medføre at vinduer ikke suspenderer deres arbejde når de minimeres. Aldrig Kun for viste vinduer Kun når det er billigt OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL compositing (standard) har tidligere fået KWin til at bryde sammen.
Dette skyldtes sandsynligvis en fejl i driveren.
Hvis du tror at du i mellemtiden har opgraderet til en stabil driver,
kan du nulstille denne beskyttelse, men vær opmærksom på at dette kan medføre et øjeblikkeligt sammenbrud!
Alternativt kan overveje at bruge XRender-motoren i stedet. Genaktivér detektion af OpenGL Genbrug skærmindhold Renderings-backend: Skaleringsmetoden "Præcis" understøttes ikke af al hardware og kan give forringet ydelse og renderingsartefakter. Skaleringsmetode: Glat Glat (langsommere) Forhindring af artefakter ("vsync"): Meget langsom XRender 