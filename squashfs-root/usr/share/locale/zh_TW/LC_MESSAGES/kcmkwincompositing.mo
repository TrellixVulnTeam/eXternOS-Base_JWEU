��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  6    
  ?   W
  W   �
     �
     �
            �   ,                    (     ;     B  ~   X     �     �     �  
   
  
              $  .  (     W     r     �  W   �     �     	          #  	   :     D         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-04 23:25+0800
Last-Translator: pan93412 <pan93412@gmail.com>
Language-Team: Chinese <zh-l10n@linux.org.tw>
Language: zh_TW
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 18.12.0
Plural-Forms: nplurals=1; plural=0;
 「整個螢幕重繪」可能會造成效能問題。 「只更新主要區域」只會避免老是全螢幕更新。 「重新使用螢幕內容」在 MESA 驅動程式中會導致嚴重的效能問題。 精確 允許應用程式阻擋合成 總是 動畫速度： 當視窗開啟時，應用程式可以設定一個提示來阻擋合成。
這將會為一些應用程式，如遊戲等帶來效能上的改善。
這個設定可以被為特定視窗指定的規則所覆蓋。 自動 簡單 啟動時開啟組合器 整個螢幕重繪 即時 保持視窗縮圖： 保持視窗縮圖會干擾視窗最小化的狀態。這可能導致視窗在最小化時並不會真的暫停某些工作。 永不 只對顯示的視窗 只更新主要區域 OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL 組合（預設）過去會將 KWin 搞掛掉。
這主要是因為一個驅動程式的問題。
如果您認為您已經更新到一個較穩定的驅動程式，
您可以將此保護重置，但請注意可能會立即導致崩潰。
另外，您也可以考慮改用 XRender 後端介面。 重新開啟 OpenGL 偵測 重新使用螢幕內容 成像後端介面： 縮放方法「精確」並未被所有的硬體支援，可能會導致效能問題。 縮放方法： 平滑 平滑（較慢） 避免破碎 ("vsync") 非常慢 XRender 