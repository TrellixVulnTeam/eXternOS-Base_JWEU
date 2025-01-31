��    '      T  5   �      `  	   a  X   k  S   �  S     S   l  P   �  y     �   �  �  V  R   �  e   F  P   �  M   �  X   K	  x   �	  H   
  d   f
     �
  3   �
  1     3   @     t     �  4   �     �  '   �        
   1     <  i   [  6   �     �       0   '     X     `     l     p  �  x  
     f   #  a   �  a   �  ^   N  L   �  �   �  �   �  �  l  K     h   _  R   �  R     O   n  |   �  M   ;  f   �     �  0   �  -   0  0   ^     �     �  I   �       &        C     U     d  u   }  9   �      -     N  ;   d     �     �     �     �           %                                               
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files EMAIL OF TRANSLATORSYour emails KIO Client NAME OF TRANSLATORSYour names Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs Use message boxes and other native notifications command file or URL url urls... Project-Id-Version: kioclient5
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2019-01-24 23:55-0200
Last-Translator: André Marcelo Alvarenga <alvarenga@kde.org>
Language-Team: Brazilian Portuguese <kde-i18n-pt_br@kde.org>
Language: pt_BR
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 18.12.1
 
Sintaxe:
             #   O 'destino' pode ser "trash:/" para mover os arquivos
            #   para a lixeira.
             #   também está disponível a versão reduzida
            #   do 'kioclient cp'.

             #   também está disponível a versão reduzida
            #   do 'kioclient mv'.

             #   a versão reduzida 'kioclient rm'
            #   também está disponível.

   kioclient cat 'url'
            # Grava o conteúdo do 'url' para stdout

   kioclient copy 'origem' 'destino'
            # Copia a URL 'origem' para 'destino'.
            #   'origem' pode ser uma lista de URLs.
   kioclient download ['src']
            # Copia a URL 'src' para um local especificado pelo usuário.
            #   'src' pode ser uma lista de URLs, se não estiver presente então
            #   uma URL será solicitada.

   kioclient exec 'url' ['mimetype']
            # Tenta abrir o documento apontado pelo 'url', no aplicativo
            #   associado a ele no KDE. Você pode omitir o 'tipo MIME'.
            #   Neste caso o tipo MIME é determinado
            #   automaticamente. É claro que URL pode ser a URL de um
            #   documento, ou pode ser um arquivo *.desktop.
            #   A 'url' também pode ser executável.
   kioclient exec .
             // Abre a pasta atual. Muito conveniente.

   kioclient exec file:/home/weis/data/test.html
             // Abre o arquivo com a interface padrão

   kioclient exec file:/root/Desktop/emacs.desktop
             // Inicia o Emacs

   kioclient exec ftp://localhost/
             // Abre uma nova janela com a URL

   kioclient ls 'url'
            # Lista o conteúdo da pasta 'url' no stdout

   kioclient move 'src' 'dest'
            # Move a URL 'src' para 'dest'.
            #   'src' pode ser uma lista de URLs.
   kioclient openProperties 'url'
            # Abre um menu de propriedades

   kioclient remove 'url'
            # Remove a URL
            #   'url' pode ser uma lista de URLs.
 *** Exemplos:
 %1: Erro de sintaxe - parâmetros insuficientes
 %1: Erro de sintaxe - excesso de parâmetros
 %1: Erro de sintaxe - comando '%2' desconhecido
 Parâmetros para o comando Comando (ver --commands) Uma ferramenta de linha de comando para operações transparentes na rede URL de destino O destino para onde baixar os arquivos alvarenga@kde.org Cliente do KIO André Marcelo Alvarenga Uso não-interativo: sem caixas de mensagem. Se não quiser uma conexão gráfica, use a opção --platform offscreen Sobrescrever destino se ele existir (para copiar e mover) Mostrar os comandos disponíveis URL ou URLs de origem Usar as caixas de mensagens e outras notificações nativas comando arquivo ou URL URL URLs... 