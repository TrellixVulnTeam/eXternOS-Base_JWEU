��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  J   M  j   �  a        e  3   m     �     �  �   �     �     �      �     �            �   2     �      �     
  
     
   '     2     6  x  :      �     �     �  �        �     �     �  %   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-11-16 09:54+0000
Last-Translator: José Nuno Coelho Pires <zepires@gmail.com>
Language-Team: pt <kde-i18n-pt@kde.org>
Language: pt
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-POFile-SpellExtra: kcmkwincompositing Rivo KWin XRender VSync Laks pre
X-POFile-SpellExtra: GLSL good space Lanczos fast ARB NVidia wrap GPU
X-POFile-SpellExtra: white XRenderSetPictureFilter GLNEAREST GLLINEAR
X-POFile-SpellExtra: Shading shaders Shaders Kolor Manager GLFRONT GLBACK
X-POFile-SpellExtra: Sinc GLX EGL
 O "Actualização do ecrã completo" pode causar problemas de performance. O "Apenas quando barato" apenas evita as intermitências nas mudanças de ecrã completo, como num vídeo. O "Reutilizar o conteúdo do ecrã" causa problemas graves de performance nos controladores MESA. Preciso Permitir às aplicações bloquearem a composição Sempre Velocidade da animação: As aplicações podem dar uma sugestão para bloquear a composição quando a janela estiver aberta.
 Isto traz melhorias de performance p.ex. para os jogos.
 A configuração poderá ser substituída pelas regras específicas da janela. Automática Rígido Activar o compositor no arranque Actualizações totais do ecrã Instantânea Manter as miniaturas da janela: Manter a miniatura da janela interfere sempre com o estado minimizado das janelas. Isto poderá fazer com que as janelas não suspendam o seu trabalho se estiverem minimizadas. Nunca Apenas para as Janelas Visíveis Só quando barato OpenGL 2.0 OpenGL 3.1 EGL GLX A composição por OpenGL (a predefinida) fez estoirar o KWin no passado.
Provavelmente isso aconteceu por um erro no controlador gráfico.
Se pensa que entretanto actualizou para um controlador mais estável,
poderá retirar esta protecção, mas tenha em mente que isto poderá resultar
num estoiro imediato! Em alternativa, poderá querer usar a infra-estrutura
do XRender. Reactivar a detecção do OpenGL Reutilizar o conteúdo do ecrã Infra-estrutura de desenho: O método de escala "Preciso" não é suportado por todo o 'hardware' e poderá provocar problemas de performance e defeitos no desenho. Método de escala: Suave Suave (mais lento) Prevenção de deslizamento (Sinc-V): Muito lenta XRender 