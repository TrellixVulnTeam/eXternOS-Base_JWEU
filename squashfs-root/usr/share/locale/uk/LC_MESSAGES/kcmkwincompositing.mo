��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  �   x
  �     �   �     z  d   �     �  $   �  �       �     �  L   �  8   E     ~  1   �  u  �     5  -   B     p  
   �  
   �     �     �  �  �  ,   M  G   z     �  U  �  (   5     ^  %   m  L   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-04 08:12+0200
Last-Translator: Yuri Chornoivan <yurchor@ukr.net>
Language-Team: Ukrainian <kde-i18n-uk@kde.org>
Language: uk
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Lokalize 2.0
 «Повне перемальовування екрана» — може призвести до проблем із швидкодією. «Лише якщо швидко» — запобігати розривам зображення лише для повноекранних змін, зокрема відео. «Повторно використовувати вміст екрана» — призводить до серйозних проблем із швидкодією з драйверами MESA. Точний Дозволити програмам блокувати композитне відтворення Завжди Швидкість анімації: Програми можуть вимагати блокування композитного відтворення на час відкриття їхнього вікна.
 У цей спосіб можна підвищити швидкодію, наприклад у іграх.
 Значення цього параметра може бути перевизначено специфічними для віко правилами. Автоматично Швидкий Увімкнути засіб композиції після запуску Повне перемальовування екрана Миттєва Зберігати мініатюри вікон: Підтримання актуальності мініатюр вікон завжди конфліктує із режимом мінімізованого показу вікон. Це може призводити до неможливості призупинення роботи відповідних програм під час мінімізації вікон. Ніколи Лише для показаних вікон Лише якщо швидко OpenGL 2.0 OpenGL 3.1 EGL GLX Композитний показ за допомогою OpenGL (типовий режим) призводив до аварій KWin.
Найімовірнішою причиною аварій є вада у драйвері.
Якщо ви вважаєте, що у вашому драйвері немає цієї вади,
ви можете скасувати цей захист, але зважайте на те, що це може призвести до негайного аварійного завершення роботи!
Іншим варіантом вирішення проблеми є використання сервера обробки XRender. Увімкнути виявлення OpenGL Повторно використовувати вміст екрана Модуль обробки: Підтримку методу масштабування «Точний» передбачено не для усіх апаратних засобів. Його використання може призводити до проблем із швидкодією та належним показом зображення на екрані. Спосіб масштабування: Плавний Плавний (повільніше) Запобігання розривам у зображенні («vsync»): Дуже повільно XRender 