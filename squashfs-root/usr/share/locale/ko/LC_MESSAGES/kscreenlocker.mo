ή                μ       0  :   1     l     y               ©     Ύ  2   Ξ  @     ¬   B    ο  Τ   ρ  d  Ζ  G   +     s               ͺ     Έ     Χ  F   μ  =   3  η   q  M  Y    §	                     
                      	               Ensuring that the screen gets locked before going to sleep Lock Session Screen Locker Screen lock enabled Screen locked Screen saver timeout Screen unlocked Sets the minutes after which the screen is locked. Sets whether the screen will be locked after the specified time. The screen locker is broken and unlocking is not possible anymore.
In order to unlock it either ConsoleKit or LoginD is needed, none of
which could be found on your system. The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in and execute the command:

loginctl unlock-session %1

Afterwards switch back to the running session (Ctrl+Alt+F%2). The screen locker is broken and unlocking is not possible anymore.
In order to unlock switch to a virtual terminal (e.g. Ctrl+Alt+F2),
log in as root and execute the command:

# ck-unlock-session <session-name>

 Project-Id-Version: 
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2018-08-14 14:42+0100
Last-Translator: Shinjo Park <kde@peremen.name>
Language-Team: Korean <kde-kr@kde.org>
Language: ko
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Lokalize 2.0
 λκΈ° λͺ¨λλ‘ μ§μνκΈ° μ μ νλ©΄μ΄ μ κΈΈ μ μλλ‘ ν¨ μΈμ μ κΈ νλ©΄ μ κΈ νλ©΄ μ κΈ νμ±νλ¨ νλ©΄ μ κΉ νλ©΄ λ³΄νΈκΈ° μκ° μ ν νλ©΄ μ κΈ νλ¦Ό νλ©΄ λ³΄νΈκΈ°λ₯Ό μμν  μκ°μ λΆ λ¨μλ‘ μ€μ ν©λλ€. μ§μ ν μκ° μ΄ν νλ©΄μ μ κΈ μ§ μ€μ ν©λλ€. νλ©΄ μ κΈ λκ΅¬μ λ¬Έμ κ° λ°μνμΌλ©° νλ©΄ μ κΈμ ν΄μ ν  μ μμ΅λλ€.
νλ©΄ μ κΈμ ν΄μ νλ €λ©΄ ConsoleKit λ° LoginDκ° νμνμ§λ§,
νμ¬ μμ€νμ λ λ€ μ€μΉλμ΄ μμ§ μμ΅λλ€. νλ©΄ μ κΈ λκ΅¬μ λ¬Έμ κ° λ°μνμΌλ©° νλ©΄ μ κΈμ ν΄μ ν  μ μμ΅λλ€.
νλ©΄ μ κΈμ ν΄μ νλ €λ©΄ κ°μ ν°λ―Έλλ‘ μ ννμ¬(μ: Ctrl+Alt+F2)
λ‘κ·ΈμΈν ν λ€μ λͺλ Ήμ μ€ννμ­μμ€:

loginctl unlock-session %1

κ·Έ λ€μ μ€ν μ€μΈ μΈμμΌλ‘ λμμ€μ­μμ€.(Ctrl+Alt+F%2) νλ©΄ μ κΈ λκ΅¬μ λ¬Έμ κ° λ°μνμΌλ©° νλ©΄ μ κΈμ ν΄μ ν  μ μμ΅λλ€.
νλ©΄ μ κΈμ ν΄μ νλ €λ©΄ κ°μ ν°λ―Έλλ‘ μ ννμ¬(μ: Ctrl+Alt+F2)
λ£¨νΈλ‘ λ‘κ·ΈμΈν ν λ€μ λͺλ Ήμ μ€ννμ­μμ€:

# ck-unlock-session <session-name>

 