��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  0   s
  W   �
  N   �
     K     R     q     x  �   �     '     .     5     K     [     b  {   {     �     �       
   -  
   8     C     G  �   K     2     M     `  ]   p     �     �     �     �  	                 !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kdeorg
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-11-19 23:09
Last-Translator: Guo Yunhe (guoyunhe)
Language-Team: Chinese Simplified
Language: zh_CN
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: crowdin.com
X-Crowdin-Project: kdeorg
X-Crowdin-Language: zh-CN
X-Crowdin-File: /kf5-stable/messages/kde-workspace/kcmkwincompositing.pot
 ”全场景重画“可能导致性能问题。 ”仅当占用资源少时“只阻止全屏幕变化带来的撕裂，例如视频。 “重用窗口内容”可能在 MESA 驱动上导致严重的性能问题。 精确 允许应用程序阻止混成 总是 动画速度： 应用程序可以设置一个提示在窗口打开时来阻止混成。
这会改善性能，例如游戏。
这个设置可以被窗口特定规则覆盖。 自动 快速 启动时开启混成 全场景重画 即时 保留窗口缩略图： 总是保持窗口缩略图影响窗口的最小化状态。这可能导致窗口在最小化时不暂停他们的工作。 从不 只对显示的窗口 仅当占用资源少时 OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL 混合(默认设置) 曾经导致 KWin 崩溃。
通常是驱动原因。
如果驱动升级到了稳定版本，
可以重置此保护但是记得这可能导致立即崩溃！
此外，可以考虑使用 XRender 后端。 重新启用 OpenGL 检测 重用窗口内容 渲染后端： 缩放模式”精确“并不被所有硬件支持并且可能导致性能或渲染问题。 缩放方法： 平滑 平滑(较慢) 避免撕裂 (垂直同步)： 非常慢 XRender 