��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  K   +
  `   w
  `   �
     9  6   B     y     �  �   �  
   �     �  )   �     �  
   �  "   �  �        �     �     �  
     
        &     *  �  .  %   �  %   �       �        �     �     �  %   �  
   �              !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-02-23 09:20+0100
Last-Translator: Vincenzo Reale <smart2128@baslug.org>
Language-Team: Italian <kde-i18n-it@kde.org>
Language: it
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 18.12.2
 «Ridisegno dell'intero schermo» può causare dei problemi di prestazioni. «Solo se conveniente» evita solo i disturbi per i cambiamenti a schermo interno come un video. «Riutilizza il contenuto dello schermo» causa gravi problemi di prestazioni con i driver MESA. Accurato Consenti alle applicazioni di bloccare la composizione Sempre Velocità di animazione: Le applicazioni possono impostare un suggerimento per bloccare la composizione quando la finestra è aperta.
 Ciò porta miglioramenti delle prestazioni per ad es. giochi.
 L'impostazione può essere scavalcata dalla finestra delle specifiche regole. Automatica Rapido Abilita gli effetti del desktop all'avvio Ridisegno dell'intero schermo Istantanea Tieni le miniature delle finestre: Il mantenimento dell'anteprima delle finestre interferisce con lo stato minimizzato delle finestre. Ciò può tradursi in finestre che non sospendono il loro lavoro quando sono minimizzate. Mai Solo per le finestre visibili Solo se conveniente OpenGL 2.0 OpenGL 3.1 EGL GLX La composizione OpenGL (quella predefinita) ha causato problemi di stabilità di KWin nel passato.
Ciò era causato per lo più da bug dei driver.
Se pensi di aver aggiornato, nel frattempo, a una versione stabile del driver,
puoi rimuovere questa protezione, tenendo presente che ciò potrebbe causare una chiusura inattesa immediata!
In alternativa, potresti voler utilizzare il motore XRender. Ri-attiva l'identificazione di OpenGL Riutilizza il contenuto dello schermo Motore di rendering: Il metodo di scalatura «Accurato» non è supportato da tutto l'hardware e può causare perdite di prestazioni e artefatti di rendering. Metodo di scalatura: Liscio Liscio (più lento) Prevenzione dei disturbi («vsync»): Lentissima XRender 