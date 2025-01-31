��          �      <      �     �     �     �  7  �  �  #  +   �  ^              �     �  x   �  �   %     �               ;     U  �  r  4   �  I   -	  @   w	  
  �	  �  �  a   �  �     9     c   A     �  x  �  �  :  R   �  3   J  |   ~  �   �  L   ~                          
       	                                                                    &End current session &Restart computer &Turn off computer <h1>Session Manager</h1> You can configure the session manager here. This includes options such as whether or not the session exit (logout) should be confirmed, whether the session should be restored again when logging in and whether the computer should be automatically shut down after session exit by default. <ul>
<li><b>Restore previous session:</b> Will save all applications running on exit and restore them when they next start up</li>
<li><b>Restore manually saved session: </b> Allows the session to be saved at any time via "Save Session" in the K-Menu. This means the currently started applications will reappear when they next start up.</li>
<li><b>Start with an empty session:</b> Do not save anything. Will come up with an empty desktop on next start.</li>
</ul> Applications to be e&xcluded from sessions: Check this option if you want the session manager to display a logout confirmation dialog box. Conf&irm logout Default Leave Option General Here you can choose what should happen by default when you log out. This only has meaning, if you logged in through KDM. Here you can enter a colon or comma separated list of applications that should not be saved in sessions, and therefore will not be started when restoring a session. For example 'xterm:konsole' or 'xterm,konsole'. O&ffer shutdown options On Login Restore &manually saved session Restore &previous session Start with an empty &session Project-Id-Version: kcmsmserver
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2010-02-12 10:31+0700
Last-Translator: Thanomsub Noppaburana <donga.nb@gmail.com>
Language-Team: Thai <thai-l10n@googlegroups.com>
Language: th
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 1.0
Plural-Forms: nplurals=1; plural=0;
 &จบวาระงานปัจจุบัน เ&ริ่มระบบคอมพิวเตอร์ใหม่ &ปิดเครื่องคอมพิวเตอร์ <h1>จัดการวาระงาน</h1> คุณสามารถปรับแต่งการทำงาน โปรแกรมจัดการวาระงาน ได้ที่นี่ ทั้งการแสดงกล่องยืนยันการออกจากระบบ และเรียกคืนวาระงานเดิมที่ทำงานค้างไว้ เมื่อล็อกอินเข้าระบบครั้งต่อไป <ul>
<li><b>เรียกคืนวาระงานที่มีการบันทึกไว้:</b> ตัวเลือกนี้จะทำการบันทึกสถานะของโปรแกรมทั้งหมดที่เปิดค้างไว้ก่อนจบการทำงาน และเรียกใช้โปรแกรมรวมทั้งเรียกคืนสถานะให้ในการทำงานครั้งถัดไปโดยอัตโนมัติ</li>
<li><b>เรียกคืนวาระงานที่มีการบันทึกไว้ด้วยตนเอง: </b> อนุญาติให้บันทึกวาระงานด้วยตัวคุณเองได้ตามต้องการ โดยบันทึกผ่านทางเมนู K หัวข้อ "บันทึกวาระงาน" ซึ่งจะมีผลทำให้โปรแกรมที่ได้ทำการบันทึกสถานะไว้ในขณะที่เรียกผ่านเมนู "บันทึกวาระงาน" ถูกเรียกใช้และเรียกคืนสถานะให้ในการทำงานครั้งต่อไป</li>
<li><b>เริ่มทำงานโดยไม่เรียกคืนวาระงานใด ๆ:</b> จะไม่มีการบันทึกสถานะของโปรแกรมใด ๆ และในการทำงานครั้งต่อไป จะไม่มีการเรียกใช้โปรแกรมตัวใด</li>
</ul> โปรแกรมที่ควรไม่รวมอยู่ในวาระงาน: เลือกตัวเลือกนี้ ถ้าต้องการให้โปรแกรมจัดการวาระงาน แสดงกล่องยืนยันก่อนทำการออกจากระบบ ยืนยันการออกจากระบบ ตัวเลือกปริยายสำหรับการออกจากวาระ ค่าทั่วไป คุณสามารถเลือกได้ว่า จะให้มีการทำอะไรหลังจากที่คุณออกจากระบบแล้ว แต่จะใช้ได้ในกรณีที่คุณทำการล็อกอินโดยผ่านทางโปรแกรม KDM เท่านั้น หากมีโปรแกรมหลายตัวที่ไม่ควรให้จัดเก็บในวาระการทำงาน คุณสามารถป้อนรายการโปรแกรมดังกล่าว ได้ที่นี่ โดยให้แยกรายการแต่ละตัวด้วยเครื่องหมายจุลภาคหรือ เครื่องหมาย ':' เพื่อแยกโปรแกรมแต่ละตัว และเมื่อมีการเรียกคืนวาระงานในการทำงานครั้งถัดไป โปรแกรมในรายการเหล่านี้จะไม่ถูกเรียกทำงาน ตัวอย่างการกรอกรายการ เช่น 'xterm:xconsole' หรือ 'xterm, xconsole' เป็นต้น ตัวเลื&อกสำหรับการปิดเครื่อง เมื่อทำการล็อกอิน เรียกคืนวาระงานที่มีการบันทึกไว้ด้วย&ตนเอง เรียกคืนวาระงานที่มีการบันทึกไว้&ก่อนหน้านี้ เริ่มทำงานเป็น&วาระงานว่าง 