��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  z  x     �  d   �  [   d  [   �  [     ]   x  �   �  �   l  �  Y  N     z   Z  P   �  U   &  [   |  �   �  O   m  l   �     *  6   9  1   p  0   �     �     �  I        M  $   \     �     �     �  p   �  8         V     w  6   �     �     �     �     �           %                                               
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
PO-Revision-Date: 2018-12-30 04:58+0100
Last-Translator: Eloy Cuadra <ecuadra@eloihr.net>
Language-Team: Spanish <kde-l10n-es@kde.org>
Language: es
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 
Sintaxis:
             #   «destino» debe ser «trash:/» para mover archivos
            #   a la papelera.
             #   la versión corta kioclient cp
            #   también está disponible.

             #   la versión corta kioclient mv
            #   también está disponible.

             #   la versión corta kioclient rm
            #   también está disponible.

   kioclient cat «url»
            # Escribe el contenido de «url» a la salida estándar

   kioclient copy «origen» «destino»
            # Copia el URL «origen» a «destino».
            #   «origen» puede ser una lista de URL.

   descarga kioclient [«origen»]
            # Copia el URL «origen» a una ubicación indicada por el usuario.
            #   «origen» puede ser una lista de URL; si no estuviera
            #   presente, se solicitaría un URL.

   kioclient exec «url» [«tipo_MIME»]
            # Intenta abrir el documento señalado por «url» en la aplicación
            #   asociada a él en KDE. Puede omitir «tipo_MIME».
            #   En este caso, el tipo MIME se determina automáticamente,
            #   Por supuesto, el URL puede ser de un documento
            #   o puede ser un archivo *.desktop.
            #  «url» también puede ser un ejecutable.
   kioclient exec .
             // Abre el directorio actual. Muy práctico.

   kioclient exec file:/home/weis/data/test.html
             // Abre el archivo con la aplicación asociada por omisión

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia Emacs

   kioclient exec ftp://localhost/
             // Abre una nueva ventana con el URL

   kioclient ls «url»
            # Lista el contenido de «url» en la salida estándar

   kioclient move «origen» «destino»
            # Mueve el URL «origen» a «destino».
            #   «origen» puede ser una lista de URL.
   kioclient openProperties «url»
            # Abre un menú de propiedades

   kioclient remove «url»
            # Elimina el URL
            #   «url» puede ser una lista de URL.
 *** Ejemplos:
 %1: Error de sintaxis;  no hay suficientes argumentos
 %1: Error de sintaxis; hay demasiados argumentos
 %1: Error de sintaxis; orden «%2» desconocida
 Argumentos para la orden Orden (vea --commands) Herramienta de la línea de órdenes para operaciones trasparentes de red URL de destino Destino donde descargar los archivos ecuadra@eloihr.net Cliente KIO Eloy Cuadra Uso no interactivo: ningún cuadro de mensajes. Si no desea una conexión gráfica, use «--platform offscreen» Sobrescribir el destino si ya existe (al copiar y mover) Mostrar las órdenes disponibles Una o más URL de origen Usar cuadros de mensaje y otras notificaciones nativas orden archivo o URL url url... 