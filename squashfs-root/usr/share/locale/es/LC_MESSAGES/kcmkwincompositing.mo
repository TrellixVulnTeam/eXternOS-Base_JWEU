��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  D   $
  y   i
  l   �
     P  6   X     �     �  �   �     �     �  '   �     �     �  $     �   *     �      �       
   6  
   A     L     P  �  T     �  &   �       �   4     �     �     �  *   �  	   )     3         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-10 21:24+0100
Last-Translator: Eloy Cuadra <ecuadra@eloihr.net>
Language-Team: Spanish <kde-l10n-es@kde.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.0
Plural-Forms: nplurals=2; plural=n != 1;
 «Repintar toda la pantalla» puede causar problemas de rendimiento. «Solo cuando sea económico» previene únicamente el efecto bandera en los cambios a pantalla completa, como un vídeo. «Reutilizar el contenido de la pantalla» causa serios problemas de rendimiento con los controladores MESA. Preciso Permitir que las aplicaciones bloqueen la composición Siempre Velocidad de animación: Las aplicaciones pueden definir un consejo para bloquear la composición cuando se abra la ventana.
Esto puede mejorar el rendimiento en juegos, por ejemplo.
Las reglas específicas de las ventanas pueden tener preferencia sobre este ajuste. Automática Nítido Activar el compositor durante el inicio Repintar toda la pantalla Instantánea Mantener miniaturas de las ventanas: Mantener las miniaturas de las ventanas en todo momento interfiere con el estado minimizado de las ventanas. Esto puede ocasionar que las ventanas no suspendan su trabajo cuando estén minimizadas. Nunca Solo para las ventanas mostradas Solo cuando resulte económico OpenGL 2.0 OpenGL 3.1 EGL GLX La composición OpenGL (por omisión) ha ocasionado que KWin se
bloquee en el pasado.
Es probable que esto se deba a un error en el controlador.
Si cree que ya se ha actualizado a un controlador estable, puede
restablecer esta protección, pero debe tener presente que es posible
que se produzca un bloqueo inmediato.
De forma alternativa, puede desear usar el motor XRender en su lugar. Reactivar detección de OpenGL Reutilizar el contenido de la pantalla Motor de renderizado: El método de escalado «Preciso» no está permitido por todo tipo de hardware y puede ocasionar regresiones de rendimiento y problemas de visualización. Método de escalado: Suave Suave (más lento) Prevención de efecto bandera («vsync»): Muy lenta XRender 