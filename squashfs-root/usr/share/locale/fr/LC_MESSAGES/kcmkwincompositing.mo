��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  Y   j
  �   �
  x   P     �  4   �            �   '          &  $   .  "   S     v  (   �  �   �     f  '   m     �  
   �  
   �     �     �  �  �  '   b  #   �     �  �   �  !   u     �     �  .   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-24 18:31+0800
Last-Translator: Simon Depiets <sdepiets@gmail.com>
Language-Team: French <kde-francophone@kde.org>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 19.03.70
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 « Rafraîchissement de tout l'écran » peut provoquer des problèmes de performances. « Seulement lorsque peu coûteux » prévient le déchirement uniquement pour les changements de l'écran complet comme dans une vidéo. « Ré-utiliser le contenu de l'écran » peut provoquer de sérieux problèmes de performances avec les pilotes MESA. Précise Permettre aux applications de bloquer la composition Toujours Vitesse d'animation : Les applications peuvent utiliser une astuce pour empêcher la composition quand la fenêtre est ouvert.
Ceci améliore les performances par exemple dans les jeux.
Ce réglage peut être forcé par des règles spécifiques à chaque fenêtre. Automatique Directe Activer le compositeur au démarrage Rafraîchissement de tout l'écran Ultra-rapide Conserver les vignettes des fenêtres : Conserver les vignettes des fenêtres interfère toujours avec l'état minimisé des fenêtres. Ceci peut mener les fenêtres à ne pas arrêter leur travail même à l'état minimisé. Jamais Seulement pour les fenêtres affichées Seulement lorsque peu coûteux OpenGL 2.0 OpenGL 3.1 EGL GLX Le compositeur OpenGL (par défaut) a rendu KWin instable par le passé.
Ceci était très probablement dû à un bogue dans le pilote graphique.
Si vous pensez avoir entre temps effectué une mise à jour vers un pilote stable,
vous pouvez réinitialiser cette protection, mais soyez conscient que cela peut aboutir à un plantage immédiat !
Sinon, vous pouvez utiliser plutôt le moteur Xrender. Activer à nouveau la détection OpenGL Ré-utiliser le contenu de l'écran Moteur de rendu : La méthode de mise à l'échelle « précise » n'est pas prise en charge par tous les matériels et peut provoquer des dégradations de performances et des artefacts de rendu. Méthode de mise à l'échelle : Avec lissage Avec lissage (plus lent) Prévention de déchirement (« vsync ») : Très lente XRender 