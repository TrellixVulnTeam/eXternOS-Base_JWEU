��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  �  �  Q   W
  e   �
  c        s  %   z     �     �  �   �     j     x  )   �  '   �  	   �  "   �  �      
   �     �     �  
   �  
   �     �       8    $   >  &   c     �  �   �     3     G     P  "   d     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-23 12:10+0200
Last-Translator: Tommi Nieminen <translator@legisign.org>
Language-Team: Finnish <kde-i18n-doc@kde.org>
Language: fi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-POT-Import-Date: 2012-12-01 22:22:22+0000
X-Generator: Lokalize 2.0
 ”Piirrettäessä koko näyttö uudelleen” voi aiheuttaa suorituskykyongelmia. ”Vain kun edullista” estää pirstoutumista, kun koko näytön kuva muuttuu esimerkiksi videossa. ”Käytä näytön sisältöä uudelleen” aiheuttaa vakavia suorituskykyongelmia MESA-ajureilla. Tarkka Salli sovellusten estää koostaminen Aina Animointinopeus: Sovellukset voivat vihjata estämään koostamisen ikkunan ollessa auki.
 Tämä parantaa suorituskykyä esim. peleissä.
 Asetuksen voi kiertää ikkunakohtaisella säännöllä. Automaattinen Terävä Ota koostin käyttöön käynnistyksessä Piirrettäessä koko näyttö uudelleen Välitön Säilytä ikkunoiden pienoiskuvat: Ikkunoiden pienoiskuvien säilyttäminen aina häiritsee ikkunoiden pienennettyä tilaa. Tästä johtuen jotkin ikkunat eivät keskeytä työtään, kun ne pienennetään. Ei koskaan Vain näytetyille ikkunoille Vain kun edullista OpenGL 2.0 OpenGL 3.1 EGL GLX OpenGL-koostaminen (oletus) on kaatanut KWinin.
Tämä johtui todennäköisesti ajurivirheestä.
Jos arvelet päivittäneesi sittemmin vakaaseen ajuriin,
voit nollata tämän suojauksen, mutta tiedä, että tästä saattaa seurata välitön kaatuminen!
Vaihtoehtoisesti voit käyttää XRender-koostamistyyppiä. Käytä OpenGL-tunnistusta uudestaan Käytä näytön sisältöä uudelleen Renderöinnin toteutus: Skaalausmenetelmää ”Tarkka” ei tueta kaikilla laitteistoilla, ja se saattaa aiheuttaa huonoa suorituskykyä sekä renderöintiartifakteja. Skaalausmenetelmä: Tasainen Tasainen (hitaampi) Pirstoutumisen esto (”vsync”): Hyvin hidas XRender 