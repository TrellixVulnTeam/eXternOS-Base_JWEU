��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  %  �  �   �
  �   T  �   :  #   �  z        �  "   �  �  �     Y  4   v  Z   �  #        *  /   9  F  i     �  +   �  $   �  
     
   $     /     3  2  7  4   j  -   �  $   �    �  *        =  2   [  6   �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-07 19:36+0300
Last-Translator: Alexander Potashev <aspotashev@gmail.com>
Language-Team: Russian <kde-russian@lists.kde.ru>
Language: ru
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Generator: Lokalize 2.0
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 Использование режима «Полная перерисовка» может ухудшать производительность. В режиме «При минимуме затрат» разрывы предотвращаются только при обновлениях всего экрана, например — при просмотре видео. Режим «Повторное использование» серьёзно ухудшает производительность при работе с драйверами MESA. Точное сглаживание Разрешать приложениям блокировать режим с графическими эффектами Для всех окон Скорость анимации: Приложения могут рекомендовать выключать графические эффекты,
когда открыто их окно. Это помогает улучшить производительность,
например, в играх. Этот параметр может быть переопределён отдельно
для конкретных окон. Автоматическое Простое растяжение пикселов Включать графические эффекты при входе в систему Полная перерисовка Быстрее Создавать миниатюры окон: Постоянное обновление миниатюр окон требует получения содержимого окна, даже когда оно свёрнуто. Это приводит к тому, что отрисовка в окне не прекращается при сворачивании окна. Не создавать Только для видимых окон При минимуме затрат OpenGL 2.0 OpenGL 3.1 EGL GLX Ранее графические эффекты OpenGL (по умолчанию) уже приводили к сбою KWin.
Скорее всего, это было связано с ошибкой драйвера.
Если драйвер уже был обновлён до стабильной версии,
то можно сбросить эту за защиту, но помните, что это может привести к немедленному сбою.
Как вариант, вместо него можно использовать XRender. Попытаться использовать OpenGL Повторное использование Механизм отрисовки: Метод масштабирования «Точное сглаживание» поддерживается не всеми видеокартами и может проводить к ухудшению производительности и артефактам отрисовки. Метод масштабирования: Со сглаживанием Со сглаживанием (медленнее) Предотвращение разрывов (VSync): Медленнее XRender 