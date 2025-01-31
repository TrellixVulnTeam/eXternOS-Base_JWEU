��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  "  r     �	     �	     �	  !  �	      0   !  j   R     �     �  	   �  {   �  �   m     L     i     z      �     �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver 0
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-08-25 09:17+0200
Last-Translator: Zarko Pintar <zarko.pintar@gmail.com>
Language-Team: Croatian <kde-croatia-list@lists.sourceforge.net>
Language: hr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
X-Generator: Lokalize 0.3
X-Environment: kde
X-Accelerator-Marker: &
X-Text-Markup: kde4
 &Završi trenutnu sesiju Ponovno pokretanje &računala Is&ključivanje računala <h1>Voditelj seansi</h1> Ovdje možete podešavati voditelja seansi. To uključuje i postavke kao što su potvrđivanje odjave kod završavanja seanse i hoće li se obnavljati seansa kod sljedećeg prijavljivanja, te da li se računalo treba uobičajno isključiti nakon završetka seanse. <ul>
<li><b>Vrati prethodnu sesiju:</b> Sačuvati će sve aplikacije koje se vrteprilikom odjave i vratiti ih prilikom slijedećeg pokretanja.</li>
<li><b>Ručno sačuvana sesija: </b> Dopušta spremanje sesije  u bilo koje vrijeme korištenjem "Sačuvaj sesiju " u K-Izborniku. To znači da se trenutno pokrenute aplikacije vraćaju u prijašnje stanje prilikom slijedećeg pokretanja.</li>
<li><b>Počni sa praznom sesijom:</b> Bez spremanja sesije. Prilikom slijedećeg pokretanja dočekati će vas prazna radna površina.</li>
</ul> Aplikacije koje se trebaju isključiti iz sesija Odaberite ovu mogućnost ako želite prikazivanje malog dijaloga za potvrđivanje odjave (prestanka rada). Potvrda &odjave Zadana opcija napuštanja Općenito Ovdje možede izabrati što se treba desiti prilikom odjave.Ove postavke imaju smisao samo ako ste prijavljeni putem KDM-a. Ovdje možete unijeti dvotočkama ili zarezima odvojen popis aplikacija koje ne treba snimiti u sjednicama. Tako da one neće biti pokrenute kada se sjednica ponovo pokrene. Na primjer 'xterm:xconsole' ili 'xterm,konsole'. Ponudi opcije za prekid rada Prilikom prijave Vrati ručno sačuvanu sesiju Vrati prethodno sačuvanu sesiju Počni sa praznom &sesijom 