��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  ?   D
  m   �
  k   �
     ^  3   f     �     �  �   �  
   �     �  *   �     �     �  (     �   4     �  (   �       
   4  
   ?     J     N  j  R  %   �  &   �     
  �   $     �  	   �     �  %   �  
                  !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-07-05 13:39+0200
Last-Translator: Josep Ma. Ferrer <txemaq@gmail.com>
Language-Team: Catalan <kde-i18n-ca@kde.org>
Language: ca@valencia
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 2.0.6
Plural-Forms: nplurals=2; plural=n != 1;
X-Accelerator-Marker: &
 «Repinta tota la pantalla» pot causar problemes de rendiment. «Només quan siga econòmic» només prevé el parpelleig per als canvis a pantalla completa, com un vídeo. «Reutilitza el contingut de la pantalla» causa greus problemes de rendiment amb els controladors de MESA. Precís Permet que les aplicacions bloquegen la composició Sempre Velocitat de l'animació: Les aplicacions poden establir un senyal per a blocar la composició quan la finestra és oberta.
 Això aporta millores de rendiment per als jocs, per exemple.
 El paràmetre es pot sobreescriure amb regles específiques de finestra. Automàtic Remarcat Activa el compositor en la inicialització Repinta tota la pantalla Instantània Mantín les miniatures de les finestres: Mantindre la miniatura de la finestra sempre interfereix amb l'estat minimitzat de les finestres. Això pot provocar que les finestres no suspenguen el seu treball quan es minimitzen. Mai Només per a les finestres visualitzades Només quan siga econòmic OpenGL 2.0 OpenGL 3.1 EGL GLX La composició OpenGL (per defecte) ha trencat KWin en el passat.
Probablement era degut a una fallada en el controlador.
Si penseu que mentrestant l'heu actualitzat a un controlador estable, podeu reiniciar aquesta protecció però sigueu conscient que podria produir-se una fallada immediata!
De manera alternativa, en el seu lloc podeu usar el dorsal XRender. Torna a activar la detecció d'OpenGL Reutilitza el contingut de la pantalla Dorsal de renderització: El mètode d'escala «Exacta» no és admés per tot el maquinari i pot provocar regressions del rendiment i objectes de renderització. Mètode d'escala: Suavitzat Suau (més lent) Prevenció d'esgarrament («vsync»): Molt lenta XRender 