��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  A   W
  l   �
  ^        e  ,   m     �     �  �   �     �     �  %   �     �     �     �  �        �     �     �  
   �  
   �     �     �  |  �  #   u  #   �     �  �   �     h     �     �  %   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-07-26 16:14+0300
Last-Translator: Moo
Language-Team: lt <kde-i18n-lt@kde.org>
Language: lt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : n%10==0 || (n%100>10 && n%100<20) ? 2 : 3);
X-Generator: Poedit 2.0.6
 "Viso ekrano piešimas iš naujo" gali sukelti našumo problemų. "Tik tuomet, kai lengva" neleidžia perskyrimų tik viso ekrano pakeitimuose, tokiuose kaip vaizdo įrašai. "Pakartotinai naudoti ekrano turinį" MESA tvarkyklėse gali sukelti rimtų našumo problemų. Tikslus Leisti programoms blokuoti kompozicionavimą Visada Animacijos greitis: Programos gali nustatyti užuominą blokuoti kompozicionavimą, kai langas yra atvertas.
 Tai suteikia našumo patobulinimų, pvz., žaidimams.
 Ši nuostata gali būti nustelbta tam tikromis langų taisyklėmis. Automatiškai Aiškus Įjungti kompozitorių paleidimo metu Viso ekrano piešimas iš naujo Akimirksniu Saugoti langų miniatiūras: Langų miniatiūrų saugojimas visada trukdo sumažintoms langų būsenoms. Tai gali sąlygoti, kad langai, juos sumažinus, nepristabdys savo darbo. Niekada Tik rodomiems langams Tik tuomet, kai lengva OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL kompozicionavimas (numatytasis) praeityje užlaužė KWin.
Greičiausiai, tai įvyko dėl tvarkyklės klaidos.
Jei galvojate, kad per tą laiką atsinaujinote į stabilią tvarkyklę,
tuomet galite atstatyti šią apsaugą, tačiau turėkite omenyje, kad tai iš karto gali sąlygoti lūžimą!
Priešingu atveju, vietoj to, galite pageidauti naudoti XRender vidinę pusę. Iš naujo įjungti OpenGL aptikimą Pakartotinai naudoti ekrano turinį Atvaizdavimo vidinė pusė: Mastelio keitimo metodas "Tikslus" nėra palaikomas visos aparatinės įrangos ir gali sukelti našumo regresijas bei atvaizdavimo artefaktus. Mastelio keitimo metodas: Glotnus Glotnus (lėtesnis) Perskyrimų prevencija („VSync“): Labai lėtai XRender 