Þ    "      ,  /   <      ø  6   ù  M   0  K   ~     Ê  '   Ó     û       ·     	   Ë     Õ     Û     ø               -     Æ     Ì     ã  
   ó  
   þ     	     '  E  E          ¦     ¼  w   Ï     G     U     \     l  	          v    W   
  o   k
  h   Û
     D  -   Q            ø          	     '   §     Ï     î  *   õ  º         Û     é      ú  
     
   &     1     5    9     Ð     ï                ·     Í     Ú     ð     	              !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-08-14 14:22+0100
Last-Translator: Shinjo Park <kde@peremen.name>
Language-Team: Korean <kde-kr@kde.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 2.0
 "ì ì²´ íë©´ ë¤ì ê·¸ë¦¬ê¸°" ìµìì ì±ë¥ì ìí¥ì ì¤ ìë ììµëë¤. "ë¶ë´ëì§ ìë ê²½ì°ìë§" ìµìì ëììê³¼ ê°ì ì ì²´ íë©´ì í°ì´ë§ë§ ë°©ì§í©ëë¤. "íë©´ ë´ì© ë¤ì ì¬ì©" ìµìì MESA ëë¼ì´ë²ìì ë¬¸ì ë¥¼ ë°ììí¬ ì ììµëë¤. ì ííê² íë¡ê·¸ë¨ìì ì»´í¬ì§í ì°¨ë¨ íì© í­ì ì ëë©ì´ì ìë íë¡ê·¸ë¨ì ì°½ì´ ì´ë ¤ ìì ë ì»´í¬ì§íì ì¤ë¨íë ì í¸ë¥¼ ë³´ë¼ ì ììµëë¤.
ê²ìê³¼ ê°ì ì¼ë¶ íê²½ìì ì±ë¥ì í¥ììí¬ ì ììµëë¤.
ì°½ ì§ì  ì¤ì ìì ì´ ì¤ì ì ë®ì´ì¸ ì ììµëë¤. ìë ë¹ ë¥´ê² ììí  ë ì»´í¬ì§í ì¬ì©íê¸° ì ì²´ íë©´ ë¤ì ê·¸ë¦¬ê¸° ì¦ì ì°½ ë¯¸ë¦¬ ë³´ê¸° ê·¸ë¦¼ ê³ì ê·¸ë¦¬ê¸°: ì°½ ë¯¸ë¦¬ ë³´ê¸° ê·¸ë¦¼ì í­ì ê·¸ë¦¬ëë¡ ì¤ì íë©´ ì°½ì ìµìí ìíì ìí¥ì ì¤ëë¤. ì°½ì ìµìíí´ë ì§í ì¤ì¸ ììì´ ê³ìë  ìë ììµëë¤. íì§ ìì ë³´ì´ë ì°½ë§ ë¶ë´ëì§ ìë ê²½ì°ìë§ OpenGL 2.0 OpenGL 3.1 EGL GLX ìì ì KWinì ì¤íìì¼°ì ë OpenGL ì»´í¬ì§í(ê¸°ë³¸ê°)ì´ ì¶©ëíìµëë¤.
ëë¼ì´ë² ë²ê·¸ ëë¬¸ì ë¬¸ì ê° ë°ìíì ìë ììµëë¤.
ë§ì½ ìì ì ì¸ ëë¼ì´ë²ë¡ ìê·¸ë ì´ëíë¤ë©´ ì´ ë³´í¸ ì¥ì¹ë¥¼ í´ì í  ìë ìì¼ë
ìì¤íì´ ì¸ì ë ì§ ì¶©ëí  ìë ììµëë¤!
ë¤ë¥¸ ë°©ë²ì¼ë¡ë XRender ë°±ìëë¥¼ ì¬ì©í  ìë ììµëë¤. OpenGL ê°ì§ ë¤ì íì±í íë©´ ë´ì© ë¤ì ì¬ì© ë ëë§ ë°±ìë: "ì ííê²" í¬ê¸° ì¡°ì  ë°©ìì ëª¨ë  íëì¨ì´ìì ì§ìíì§ ìì¼ë©° ì±ë¥ ì í ë° íë©´ ììì´ ìê¸¸ ìë ììµëë¤. í¬ê¸° ì¡°ì  ë°©ë²: ë¶ëë½ê² ë¶ëë½ê² (ëë¦¼) í°ì´ë§ ë°©ì§(VSync): ë§¤ì° ëë¦¬ê² XRender 