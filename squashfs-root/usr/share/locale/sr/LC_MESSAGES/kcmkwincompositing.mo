��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  #  �  ~   �
  �   ?  �   �     �  @   �     �      �  O       X  
   m  9   x  ,   �     �  '   �      
   +  /   6  #   f     �     �     �  
   �  J  �  D   	  4   N  $   �  �   �     f     �     �  6   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: http://bugs.kde.org
PO-Revision-Date: 2017-10-30 23:08+0100
Last-Translator: Chusslove Illich <caslav.ilic@gmx.net>
Language-Team: Serbian <kde-i18n-sr@kde.org>
Language: sr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Associated-UI-Catalogs: kcmkwm
X-Environment: kde
 Опција „исцртавање целог екрана“ може лоше да утиче на перформансе. Опција „само ако је јефтино“ спречава цепкање при изменама целог екрана, као у видео записима. „рециклирање садржаја екрана“ јако лоше утиче на перформансе са Месиним драјверима. прецизно Програми могу да блокирају слагање увек Брзина анимације: Програми могу да дају наговештај за блокирање слагања док је прозор отворен.
Ово доноси побољшане перформансе нпр. у играма.
Поставка може да се потисне посебним правилима по прозору. аутоматско оштро Активирај слагач при покретању исцртавање целог екрана тренутно Држи сличице прозора: Трајно задржавање сличице прозора меша се у минимизовано стање прозора. Програми могу да не реагују на предвиђен начин када им је прозор минимизован. никад само за приказане прозоре само ако је јефтино опенГЛ 2.0 опенГЛ 3.1 ЕГЛ ГЛИкс ОпенГЛ слагање (подразумевано) умело је раније да сруши К‑вин.
" "Највероватнији узрок томе био је дефект драјвера.Ову заштиту можете ресетовати ако сматрате да сте у међувремену
прешли на стабилан драјвер, али имајте на уму да тиме можете
изазвати моментални пад!
Уместо овога можете покушати и са позадином Икс‑рендер. Поново активирај откривање опенГЛ‑а рециклирање садржаја екрана Рендерска позадина: Прецизно слагање не подржава сав хардвер, па може доћи до погоршања перформанси и сметњи у рендеровању. Начин скалирања: глатко глатко (спорије) Спречавање цепања (в‑синхро): врло споро Икс‑рендер 