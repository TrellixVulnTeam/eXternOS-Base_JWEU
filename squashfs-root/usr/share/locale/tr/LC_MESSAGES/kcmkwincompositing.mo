��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  ;   
  j   Z
  i   �
     /  5   5  	   k     u  �   �     j     s  2   z     �     �  #   �  �   �     �  #   �     �  
   �  
   �     �     �  x  �  +   u     �     �  �   �     l     �     �     �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2017-10-23 11:20+0000
Last-Translator: İşbaran <isbaran@gmail.com>
Language-Team: Turkish <kde-l10n-tr@kde.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
 "Tam ekran onarumı" performans sorunlarına yok açabilir. "Sadece kalitesiz olduğunda" sadece bir video gibi tam ekran değişikliklerinde parçalanmayı engeller. "Ekran içeriğini yeniden kullan" MESA sürücülerinde şiddetli performans sorunlarına yol açabilir. Kesin Uygulamaların, birleştirmeyi engellemesine izin ver Her zaman Canlandırma hızı: Uygulamalar, pencere açıkken birleşimi engellemek için bir ipucu belirleyebilir.
Bu, örneğin; oyunlar için performans iyileştirmeleri getirebilir.
Ayar, pencereye özgü kurallar tarafından geçersiz kılınabilir. Otomatik Gevrek Masaüstü Efektlerini başlangıçta etkinleştir Tam ekran yeniden çizim Anında Pencere küçük resimlerini sakla: Pencere küçük resimlerini tutumak herzaman pencerelerin simge durumuna gelmesini engeller. Bunun sonucu olarak, pencere küçültüldüğünde kendi işini durdurabilir. Asla Sadece Gösterilen Pencereler için Sadece maliyetsiz ise OpenGL 2.0 OpenGL 3.1 EGL GLX Daha önceden OpenGL derlemesi (öntanımlı) KWin'in çökmesine sebep oldu.
Bu muhtemelen bir sürücü hatasıdır.
Eğer bu durumun kararlı bir sürücüye yükseltme yaparken olduğunu düşünüyorsanız
bu korumayı sıfırlayabilirsiniz ancak bu işlemin ani çökmeye neden olabileceğini unutmayın!
Alternatif olarak, XRender arka ucunu kullanmak isteyebilirsiniz. OpenGL bulma işlevini yeniden etkinleştir Ekran içeriğini tekrar kullan İşleme arka ucu: "Kesin" ölçekleme yöntemi tüm donanımlar tarafından desteklenmemektedir ve performans düşüklüğü veya gerçekleme sorunlarına yolaçabilir. Ölçekleme yöntemi: Yumuşak Yumuşak (daha yavaş) Yaşarma Koruması ("vsync"): Çok yavaş XRender 