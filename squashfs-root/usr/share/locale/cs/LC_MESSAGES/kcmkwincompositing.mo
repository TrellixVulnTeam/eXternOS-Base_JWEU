��            )         �  6   �  M   �  K   6     �  '   �     �     �  	   �     �     �     �               -     3     J  
   Z  
   e     p     �  E  �     �          #     6     D     K     [  	   y     �  �  �  H   U  {   �  b   	     }	  %   �	     �	     �	     �	     �	     �	     �	  
   
     
     8
     >
     X
  
   u
  
   �
     �
     �
  [  �
     �           +     L     b     i      ~     �     �                                              	                         
                                                                 "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-14 16:56+0100
Last-Translator: Vit Pelcak <vit@pelcak.org>
Language-Team: Czech <kde-i18n-doc@kde.org>
Language: cs
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
X-Generator: Lokalize 18.12.0
X-Language: cs_CZ
X-Source-Language: en_US
 "Překreslení celé obrazovky" může způsobit výkonnostní problémy "Pouze pokud není náročné" zabrání trhání pouze po změny na celé obrazovce jako třeba při přehrávání videa. "Znovu využít obsah obrazovky" způsobuje na ovladačích MESA vážné výkonnostní problémy. Přesná Povolit aplikacím blokovat kompozici Vždy Rychlost animace: Automaticky Hrubá Povolit kompozitor při startu Překreslení celé obrazovky Okamžitě Zachovat miniatury oken: Nikdy Pouze pro zobrazená okna Pouze pokud není náročné OpenGL 2.0 OpenGL 3.1 EGL GLX Kompozice OpenGL (výchozí) vedla v minulosti k pádu KWinu.
K tomu nejspíš došlo kvůli chybě v ovladači.
Pokud si myslíte, že jste mezitím aktualizovali na stabilní verzi ovladače,
můžete resetovat ochranu, ale mějte na paměti, že to může vést k okamžitému pádu.
Případně můžete na místo toho zkusit použít XRender. Znovu povolit detekci OpenGL Znovu využít obsah obrazovky Vykreslovací podpůrná vrstva: Metoda škálování: Jemná Jemná (pomalejší) Zabránění trhání ("VSync"): Velmi pomalu XRender 