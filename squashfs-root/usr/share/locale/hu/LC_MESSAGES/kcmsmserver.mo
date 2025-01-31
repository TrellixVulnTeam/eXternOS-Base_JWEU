��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  ~  r     �  !   	     /	  A  O	  5  �
  3   �  �   �  +   �      �     �  �   �  �   �  +   �     �  )   �  &   �                               
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: KDE 4.2
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2010-11-18 08:58+0100
Last-Translator: Kristóf Kiszel <ulysses@kubuntu.org>
Language-Team: Magyar <kde-l10n-hu@kde.org>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 1.0
 A munkafolyamat b&ezárása A szá&mítógép újraindítása A számítógép kikap&csolása <h1>Munkamenetkezelő</h1> Itt lehet módosítani a munkamenetkezelés beállításait. A beállítások közé tartozik például: megerősítés kérése kijelentkezés előtt, a munkamenet állapotának visszatöltése bejelentkezéskor, illetve hogy kijelentkezéskor automatikusan megtörténjen-e a gép lezárása. <ul>
<li><b>A legutóbbi állapot visszatöltése:</b> a rendszer megjegyzi a futó alkalmazásokat kilépés előtt, és azokat induláskor újból elindítja</li>
<li><b>Kézzel mentett állapot visszatöltése: </b> a pillanatnyi állapot bármikor elmenthető a KDE menü "Az állapot mentése" parancsával. Ez azt jelenti, hogy az éppen futó alkalmazások az indításkor újból el fognak indulni.</li>
<li><b>Indítás mindig alapállapotban:</b> a rendszer nem menti el a programok állapotát, a munkaasztal indításkor alaphelyzetbe kerül.</li>
</ul> Az állapotkezelésből k&izárandó alkalmazások: Jelölje be ezt az opciót, ha azt szeretné, hogy megjelenjen egy megerősítést kérő párbeszédablak a kilépési parancs kiadása után. Megerősítés kérése &kijelentkezésnél Alapértelmezett kilépési mód Általános Itt lehet kiválasztani, hogy kijelentkezéskor mi történjen. Csak akkor van jelentősége, ha a grafikus felületen (a KDM-en) keresztül jelentkezett be. Itt lehet vesszővel vagy kettősponttal elválasztva felsorolni azokat a programokat, amelyek állapotát nem kell elmenteni (ezért ezek visszaállításkor nem fognak visszaállni korábbi állapotukba). Például: "xterm:konsole" vagy "xterm,konsole". A le&zárási lehetőségek megjelenítése Bejelentkezéskor &Kézzel mentett állapot visszatöltése A legutóbbi állapot &visszatöltése Indítás &alapállapotban 