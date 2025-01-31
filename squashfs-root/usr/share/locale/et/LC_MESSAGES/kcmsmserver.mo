��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  u  r     �     	     	    +	  �  <
     7  P   V     �     �     �  w   �  �   Z     &     C  (   R     {     �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2009-02-10 00:25+0200
Last-Translator: Marek Laane <bald@starman.ee>
Language-Team: Estonian <kde-et@linux.ee>
Language: et
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: KBabel 1.10
Plural-Forms: nplurals=2; plural=n != 1;
 Lõp&etada käesolev seanss &Taaskäivitada arvuti &Seisata arvuti <h1>Seansihaldur</h1> Siin saab seadistada seansihaldurit. See hõlmab endas valikuid, kas seansi lõpetamisel (väljalogimisel) küsitakse sult kinnitust, kas eelmine seanss taastatakse sisselogimisel ning kas arvuti töö lõpetatakse vaikimisi, kui seanss lõpetatakse. <ul>
<li><b>Taastatakse eelmine seanss:</b> väljumisel salvestatakse kõik töötavad rakendused ja taastatakse need uuel käivitamisel.</li>
<li><b>Taastatakse käsitsi salvestatud seanss:</b> võimaldab salvestada seanssi igal hetkel K menüüst käsuga "Salvesta seanss". See tähendab, et parajasti töötavad rakendused taastuvad uuel käivitamisel.</li>
<li><b>Käivitatakse tühi seanss:</b> midagi ei salvestata ja järgmisel käivitamisel ilmub tavaline avamata rakendusteta töölaud.</li>
</ul> &Rakendused, mida ei taastata: Vali, kui soovid, et seansihaldur küsiks sinu käest väljalogimisel kinnitust. K&innitus väljalogimisel Vaikimisi väljumisvalik Üldine Siin saab valida, mis vaikimisi juhtub, kui sa välja logid. Mõtet omab see ainult siis, kui sa logid sisse KDMi abil. Siin saab koolonite või komadega eraldatult määrata rakendused, mida seansihaldur ei peaks salvestama ja mida seega ka seansi taastamisel ei käivitata, näiteks 'xterm:xconsole' või 'xterm,konsole'. &Pakutakse seiskamisvalikuid Sisselogimisel Taastatakse &käsitsi salvestatud seanss &Taastatakse eelmine seanss Käivitatakse tühi s&eanss 