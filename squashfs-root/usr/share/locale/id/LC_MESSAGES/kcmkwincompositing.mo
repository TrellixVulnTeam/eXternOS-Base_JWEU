��    "      ,  /   <      �  6   �  M   0  K   ~     �  '   �     �       �     	   �     �     �     �            �   -     �     �     �  
   �  
   �     	     '  E  E     �     �     �  w   �     G     U     \     l  	   �     �  k  �  >   
  Y   G
  Q   �
     �
  /   �
     *     1  �   D            #   %     I     b     h  �   �  
   /  #   :     ^  
   r  
   }     �     �  J  �     �     �       }   $     �     �     �     �     �     �         !                
                                                                            "                                     	                    "Full screen repaints" can cause performance problems. "Only when cheap" only prevents tearing for full screen changes like a video. "Re-use screen content" causes severe performance problems on MESA drivers. Accurate Allow applications to block compositing Always Animation speed: Applications can set a hint to block compositing when the window is open.
 This brings performance improvements for e.g. games.
 The setting can be overruled by window-specific rules. Automatic Crisp Enable compositor on startup Full screen repaints Instant Keep window thumbnails: Keeping the window thumbnail always interferes with the minimized state of windows. This can result in windows not suspending their work when minimized. Never Only for Shown Windows Only when cheap OpenGL 2.0 OpenGL 3.1 OpenGL Platform InterfaceEGL OpenGL Platform InterfaceGLX OpenGL compositing (the default) has crashed KWin in the past.
This was most likely due to a driver bug.
If you think that you have meanwhile upgraded to a stable driver,
you can reset this protection but be aware that this might result in an immediate crash!
Alternatively, you might want to use the XRender backend instead. Re-enable OpenGL detection Re-use screen content Rendering backend: Scale method "Accurate" is not supported by all hardware and can cause performance regressions and rendering artifacts. Scale method: Smooth Smooth (slower) Tearing prevention ("vsync"): Very slow XRender Project-Id-Version: kcmkwincompositing
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-07-19 03:20+0700
Last-Translator: Wantoyo <wantoyek@gmail.com>
Language-Team: Indonesian <kde-i18n-doc@kde.org>
Language: id
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 "Gambar ulang layar penuh" dapat menyebabkan masalah performa. "Hanya ketika rendah" hanya mencegah perobekan untuk perubahan layar penuh seperti video. "Gunakan-ulang konten layar" menyebabkan masalah serius kinerja pada driver MESA. Akurat Bolehkan aplikasi untuk memblokir pengoposisian Selalu Kecepatan animasi: Aplikasi bisa mengeset sebuah petunjuk untuk memblokir pengomposisian ketika window terbuka.
 Ini membawa penambahan-baik kinerja untuk misalnya permainan.
 Setelan bisa diapkir oleh peraturan window tertentu. Otomatis Tajam Fungsikan kompositor saat pemulaian Gambar ulang layar penuh Cepat Jaga gambar-mini window: Menjaga thumbail window selalu turut campur dengan keadaan window yang diminimalkan. Ini bisa mengakibatkan di window enggak mensuspensi pekerjaannya ketika ia diminimalkan. Tak Pernah Hanya untuk Window yang Ditampilkan Hanya ketika rendah OpenGL 2.0 OpenGL 3.1 EGL GLX Komposit OpenGL (baku) telah menyebabkan KWin mogok di masa lalu.
Kemungkinan ini disebabkan oleh bug penggerak.
Jika anda pikir ada telah meningkatkan ke penggerak yang stabil,
anda dapat mengatur ulang perlindungan ini tapi ingat bahwa ini dapat menyebabkan kemogokan!
Sebagai alternatif, anda dapat menggunakan backend XRender. Aktifkan-ulang deteksi OpenGL Gunakan-ulang konten layar Backend render: Metode skala "Akurat" tidaklah didukung oleh semua perangkat keras dan dapat menyebabkan regresi performa dan artifak render. Metode skala: Halus Halus (lebih pelan) Pencegahan Sobek ("vsync"): Sangat pelan XRender 