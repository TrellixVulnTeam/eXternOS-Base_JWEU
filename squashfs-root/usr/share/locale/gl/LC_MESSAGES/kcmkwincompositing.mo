��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  A   3
  �   u
  r        �  4   �     �     �  �   �     �     �     �     �            �   =     �  "   �       
   .  
   9     D     H  Z  L  &   �      �     �  �        �     �     �  '   �  	                 !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-10-19 22:04+0200
Last-Translator: Adrián Chaves (Gallaecio) <adrian@chaves.io>
Language-Team: Galician <proxecto@trasno.gal>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 19.11.70
 «Repintar toda a pantalla» pode causar problemas de rendemento. «Só cando sexa barato» só evita o efecto bandeira nos cambios que afectan a toda a pantalla, como cando se reproduce un vídeo a pantalla completa. «Reutilizar o contido da pantalla» causa graves problemas de rendemento cando se utilizan os controladores MESA. Exacto Permitir que as aplicacións bloqueen a composición Sempre Velocidade das animacións: As aplicacións poden definir unha pista para bloquear a composición cando se abre a xanela.
Isto mellora o rendemento, por exemplo, nos xogos.
As regras específicas de xanelas poden definir un valor distinto para esta opción. Automático Rugoso Activar o compositor no inicio Repintar toda a pantalla Instantánea Manter as miniaturas da xanela: Manter sempre a miniatura da xanela interfire co estado de minimización das xanelas. Isto pode facer que as xanelas non suspendan o seu procesamento mentres están minimizadas. Nunca Só para as xanelas que se mostran Só cando sexa barato OpenGL 2.0 OpenGL 3.1 EGL GLX A composición de OpenGL (a predeterminada) quebrou KWin no pasado.
Posibelmente se debese a un fallo no controlador.
Se cre que mentres tanto anovou o controlador a unha versión estábel, pode quitar esta protección pero queda avisado de que isto pode causar unha quebra inmediata.
Como alternativa pode usar no canto a infraestrutura XRender. Activar de novo a detección de OpenGL Reutilizar o contido da pantalla Infraestrutura de debuxado: Non calquera hardware é compatíbel co método de cambio de escala «Certeiro», e o método pode causar problemas de rendemento e debuxado de obxectos. Método de cambio de escala: Suave Suave (máis lento) Prevención do efecto bandeira (vsync): Moi lenta XRender 