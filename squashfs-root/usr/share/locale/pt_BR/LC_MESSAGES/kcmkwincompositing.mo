��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  E   D
  s   �
  X   �
     W  4   _     �     �  �   �     �     �  &   �     �     �       �   #     �      �     �  
     
   #     .     2  V  6  !   �     �  !   �  �   �     }     �     �  &   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-24 23:53-0200
Last-Translator: André Marcelo Alvarenga <alvarenga@kde.org>
Language-Team: Brazilian Portuguese <kde-i18n-pt_br@kde.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 18.12.1
 "Atualizações da tela inteira" pode causar problemas de desempenho. "Apenas quando for econômico" somente evita as intermitências nas mudanças para tela inteira, como em um vídeo. "Reutilizar o conteúdo da tela" causa sérios problemas de desempenho nos drivers MESA. Preciso Permitir que os aplicativos bloqueiem a composição Sempre Velocidade da animação: Os aplicativos podem definir uma dica para bloquear a composição quando a janela estiver aberta. 
  Isto proporciona melhorias de desempenho, por ex. jogos. 
  A configuração pode ser anulada por regras específicas da janela. Automático Rígido Ativar o compositor na inicialização Atualizações da tela inteira Instantâneo Manter as miniaturas da janela: Manter a miniatura da janela interfere sempre com o estado minimizado das janelas. Isso poderá fazer com que as janelas não suspendam o seu trabalho se estiverem minimizadas. Nunca Apenas para as janelas visíveis Apenas quando for econômico OpenGL 2.0 OpenGL 3.1 EGL GLX A composição OpenGL (a padrão) fez o KWin falhar no passado.
Isso provavelmente ocorreu por um erro no driver.
Se você acha que atualizou para um driver mais estável,
poderá redefinir esta proteção, mas tome cuidado que isto poderá resultar em uma falha imediata!
Alternativamente, você pode querer usar a infraestrutura do XRender. Reabilitar a detecção do OpenGL Reutilizar o conteúdo da tela Infraestrutura de renderização: O método de escala "Preciso" não é suportado por todo o hardware e poderá provocar problemas de desempenho e defeitos na renderização. Método de escala: Suave Suave (mais lento) Prevenção de deslizamento ("vsync"): Muito lenta XRender 