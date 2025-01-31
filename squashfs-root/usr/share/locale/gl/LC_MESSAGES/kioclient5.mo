��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x  
     `     Y   r  Y   �  Y   &  N   �  �   �  �   a  g  D  I   �  l   �  P   c  P   �  V     �   \  O   �  j   ?     �  2   �  /   �  2        O     b  C   }     �  %   �     �            a   /  5   �     �     �  6   �     3     8     H     L           %                                               
   "                    $       '                                   	   !         &   #                                       
Syntax:
             #   'dest' may be "trash:/" to move the files
            #   to the trash.
             #   the short version kioclient cp
            #   is also available.

             #   the short version kioclient mv
            #   is also available.

             #   the short version kioclient rm
            #   is also available.

   kioclient cat 'url'
            # Writes out the contents of 'url' to stdout

   kioclient copy 'src' 'dest'
            # Copies the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient download ['src']
            # Copies the URL 'src' to a user-specified location'.
            #   'src' may be a list of URLs, if not present then
            #   a URL will be requested.

   kioclient exec 'url' ['mimetype']
            # Tries to open the document pointed to by 'url', in the application
            #   associated with it in KDE. You may omit 'mimetype'.
            #   In this case the mimetype is determined
            #   automatically. Of course URL may be the URL of a
            #   document, or it may be a *.desktop file.
            #   'url' can be an executable, too.
   kioclient exec .
             // Opens the current directory. Very convenient.

   kioclient exec file:/home/weis/data/test.html
             // Opens the file with default binding

   kioclient exec file:/root/Desktop/emacs.desktop
             // Starts emacs

   kioclient exec ftp://localhost/
             // Opens new window with URL

   kioclient ls 'url'
            # Lists the contents of the directory 'url' to stdout

   kioclient move 'src' 'dest'
            # Moves the URL 'src' to 'dest'.
            #   'src' may be a list of URLs.
   kioclient openProperties 'url'
            # Opens a properties menu

   kioclient remove 'url'
            # Removes the URL
            #   'url' may be a list of URLs.
 *** Examples:
 @info:shell%1: Syntax error, not enough arguments
 @info:shell%1: Syntax error, too many arguments
 @info:shell%1: Syntax error, unknown command '%2'
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-10-19 21:59+0200
Last-Translator: Adrián Chaves (Gallaecio) <adrian@chaves.io>
Language-Team: Galician <proxecto@trasno.gal>
Language: gl
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n != 1;
X-Generator: Lokalize 19.11.70
 
Sintaxe:
             #   «dest» pode ser «trash:/» para deitar os ficheiros
            #   no lixo.
             #   tamén está dispoñíbel a versión curta
            #   kioclient cp

             #   tamén está dispoñíbel a versión curta
            #   kioclient mv

             #   tamén está dispoñíbel a versión curta
            #   kioclient rm

   kioclient cat «url»
            # Escribe o contido de «url» en stdout

   kioclient copy «orixe» «destino»
            # Copia o URL «orixe» en «destino».
            #   «orixe» pode ser unha lista de URL.
   kioclient download [«orixe»]
            # Copia o URL «orixe» para un lugar especificado polo usuario.
            #   «orixe» pode ser unha lista de URL, se non está presente
            #   preguntarase polo URL.

   kioclient exec «url» [«tipo mime»]
            # Intenta abrir o documento sinalado por «url» na aplicación
            #   asociado con el en KDE. Pode omitir o «tipo mime».
            #   Neste caso ha determinarse automaticamente.
            #   Por suposto URL pode ser o URL dun documento,
            #   ou pode ser un ficheiro *.desktop.
   kioclient exec .
             // Abre o directorio actual. Moi útil.

   kioclient exec file:/home/weis/data/test.html
             // Abre o ficheiro co programa predeterminado

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia emacs

   kioclient exec ftp://localhost/
             // Abre unha nova xanela co URL

   kioclient ls «url»
            # Lista o contido do directorio «url» en stdout

   kioclient move «orixe» «destino»
            # Move o URL «orixe» para «destino».
            #   «orixe» pode ser unha lista de URL.
   kioclient openProperties «url»
            # Abre un menú de propiedades

   kioclient remove «URL»
            # Retira o URL
            #   «URL» pode ser unha lista de URL.
 *** Exemplos:
 %1: Erro de sintaxe, non hai argumentos de abondo
 %1: Erro de sintaxe, hai demasiados argumentos
 %1: Erro de sintaxe, non se coñece a orde «%2»
 Argumentos da orde Orde (consulte --commands) Ferramenta da liña de ordes para operacións transparentes á rede URL de destino O destino onde descargar os ficheiros mvillarino@kde-espana.org Cliente de KIO Marce Villarino Uso non interactivo: sen diálogos. Se non quere unha conexión gráfica use --platform offscreen Sobrescribe o destino se existe (para copiar e mover) Mostrar as ordes dispoñíbeis Lista de URL de orixe Usar caixas de mensaxe e outras notificacións nativas orde ficheiro ou URL url url… 