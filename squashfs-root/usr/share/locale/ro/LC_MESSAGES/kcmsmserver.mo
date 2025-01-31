��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  �  r     #	     ?	     Y	  E  p	  "  �
  .   �  y        �     �     �  �   �  �   i  ,   D     q  &   �  "   �     �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-02-27 14:00+0200
Last-Translator: Sergiu Bivol <sergiu@ase.md>
Language-Team: Romanian <kde-i18n-ro@lists.kde.org>
Language: ro
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 0.3
Plural-Forms: nplurals=3; plural=n==1 ? 0 : (n==0 || (n%100 > 0 && n%100 < 20)) ? 1 : 2;

 &Termină sesiunea curentă &Repornește calculatorul &Oprește calculatorul <h1>Administratorul de sesiune</h1> Aici puteți configura administratorul de sesiune. Acesta include opțiuni printre care dacă ieșirea din mediul KDE va fi sau nu confirmată, dacă sesiunea precedentă va fi refăcută la următoarea autentificare și dacă mașina să fie oprită automat după ce închideți sesiunea. <ul>
<li><b>Restaurează sesiunea precedentă:</b> La terminare va salva toate aplicațiile ce rulează și le va restaura la următoarea pornire</li>
<li><b>Restaurează manual sesiunea salvată: </b> Permite ca sesiunea să fie salvată în orice moment folosind itemul "Salvează sesiunea" din meniul K. Acest lucru înseamnă că aplicațiile pornite în acest moment vor reapărea la următoarea pornire a KDE.</li>
<li><b>Pornește cu o sesiune nulă:</b> Nu salvează nimic. La următoarea pornire nu vor fi startate aplicații.</li>
</ul> Aplicațiile de exclus din controlul sesiunii: Selectați această opțiune dacă doriți ca administratorul de sesiune să afișeze un dialog de confirmare la ieșire. Confirmă &ieșirea Opțiunea implicită de plecare General Aici puteți alege ce anume să se întâmple când ieșiți din KDE. Această setare are sens numai dacă v-ați autentificat utilizând KDM ca manager de autentificare. Aici puteți introduce o listă de aplicații separate prin virgulă sau două puncte, care nu trebuie salvate în sesiuni și nu vor fi pornite la restaurarea sesiunii. De exemplu: 'xterm:konsole' sau 'xterm,konsole'. &Oferă posibilitatea de oprire a sistemului La autentificare Restaurează &manual sesiunea salvată R&estaurează sesiunea precedentă Pornește cu o sesiune &nulă 