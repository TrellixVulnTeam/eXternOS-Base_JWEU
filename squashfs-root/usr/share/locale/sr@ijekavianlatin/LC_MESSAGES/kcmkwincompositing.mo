��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  2  �  K   �
  d     [   �     �  #   �     	       �   "  
   �     �      �          ,     5  �   M     �     �     
  
     
   )     4     8  E  <  &   �     �     �  o   �     K     ^     e  "   v  
   �     �         !                
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
Language: sr@ijekavianlatin
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=4; plural=n==1 ? 3 : n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
X-Accelerator-Marker: &
X-Text-Markup: kde4
X-Associated-UI-Catalogs: kcmkwm
X-Environment: kde
 Opcija „iscrtavanje celog ekrana“ može loše da utiče na performanse. Opcija „samo ako je jeftino“ sprečava cepkanje pri izmenama celog ekrana, kao u video zapisima. „recikliranje sadržaja ekrana“ jako loše utiče na performanse sa Mesinim drajverima. precizno Programi mogu da blokiraju slaganje uvijek Brzina animacije: Programi mogu da daju nagoveštaj za blokiranje slaganja dok je prozor otvoren.
Ovo donosi poboljšane performanse npr. u igrama.
Postavka može da se potisne posebnim pravilima po prozoru. automatsko oštro Aktiviraj slagač pri pokretanju iscrtavanje celog ekrana trenutno Drži sličice prozora: Trajno zadržavanje sličice prozora meša se u minimizovano stanje prozora. Programi mogu da ne reaguju na predviđen način kada im je prozor minimizovan. nikad samo za prikazane prozore samo ako je jeftino OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL slaganje (podrazumevano) umelo je ranije da sruši KWin.
" "Najverovatniji uzrok tome bio je defekt drajvera.Ovu zaštitu možete resetovati ako smatrate da ste u međuvremenu
prešli na stabilan drajver, ali imajte na umu da time možete
izazvati momentalni pad!
Umesto ovoga možete pokušati i sa pozadinom XRender. Ponovo aktiviraj otkrivanje OpenGL‑a recikliranje sadržaja ekrana Renderska pozadina: Precizno slaganje ne podržava sav hardver, pa može doći do pogoršanja performansi i smetnji u renderovanju. Način skaliranja: glatko glatko (sporije) Sprečavanje cepanja (v‑sinhro): vrlo sporo XRender 