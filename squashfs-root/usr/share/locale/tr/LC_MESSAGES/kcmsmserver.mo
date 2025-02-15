��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  {  r     �     	     )	  ^   =	  �  �	  *   �  t   �     0  !   F     h  �   n  �             8  '   A     i     �                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2014-10-21 09:49+0000
Last-Translator: Necdet <necdetyucel@gmail.com>
Language-Team: Turkish <kde-l10n-tr@kde.org>
Language: tr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 0.3
 &Geçerli oturumu sonlandır B&ilgisayarı yeniden başlat &Bilgisayarı kapat <h1>Oturum Yöneticisi</h1> Buradan oturum yöneticisi ile ilgili temel ayarlar yapılabilir.  <ul>
<li><b>Önceki oturumu yükle:</b> Tüm çalışan uygulamaları oturumu kapatırken kaydeder ve bir sonraki açılışta geri yükler</li>
<li><b>Elle kaydedilmiş oturumu geri yükle: </b> İstenen zamanda K-Menüsündeki "Oturumu Kaydet" kullanılarak oturum kaydedilebilir. Böylece bir sonraki açılışta sistem oturumu kaydedilen yerden geri yükler.</li>
<li><b>Boş bir oturum başlat:</b> Hiçbir şey kaydetmez. Bir sonraki açılışta boş bir masaüstü ile açılır.</li>
</ul> Oturumlardan ayrı tutulacak u&ygulamalar: Oturum yöneticisinin KDE kapanışı sırasında onay kutusu göstermesiniistiyorsanız bu seçeneği işaretleyin. Ç&ıkmadan önce sor Öntanımlı Çıkış Seçeneği Genel Sistemden çıkış yaptığınız zaman ne yapılması gerektiğine buradan karar verebilirsiniz. Bu işlem sadece KDM üzerinden çalıştığınız zaman geçerlidir. Oturumlarda kaydedilmesini istemediğiniz uygulamaları burada iki nokta üstüste ile ayırarak liste şeklinde yazabilirsiniz. Oturumu tekrar açtığınızda bu programlar başlatılmayacaklardır. Örneğin 'xterm:xconsole' ya da 'xterm,konsole' gibi. Kapatma tavsiye &etme ayarları Girişte &Elle kaydedilmiş oturumu etkinleştir Ö&nceki oturumu etkinleştir &Boş bir oturum ile başla 