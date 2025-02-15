��    $      <  5   \      0  	   1  X   ;  S   �  S   �  S   <  P   �  y   �  �   [  �  &  R   �  e     P   |  M   �  X   	  x   t	  H   �	  d   6
     �
  3   �
  1   �
  3        D     Z  4   s     �  '   �  
   �  i   �  6   U     �     �     �     �     �     �    �     W  �   i  y     y   �  y     i   �  �   �  d  �  �    t   �  �     _   �  h     �   u  �     d   �  �        �  L   �  L   )  H   v  +   �  $   �  _        p  ?   �     �  �   �  }   �  4   $     Y     n     {     �     �            "                                                
                        !       $                                   	            #                                          
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
 Arguments for command Command (see --commands) Command-line tool for network-transparent operations Destination URL Destination where to download the files KIO Client Non-interactive use: no message boxes. If you don't want a graphical connection, use --platform offscreen Overwrite destination if it exists (for copy and move) Show available commands Source URL or URLs command file or URL url urls... Project-Id-Version: kioclient
Report-Msgid-Bugs-To: https://bugs.kde.org
PO-Revision-Date: 2016-09-16 14:26+0200
Last-Translator: Dimitris Kardarakos <dimkard@gmail.com>
Language-Team: Greek <kde-i18n-el@kde.org>
Language: el
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Lokalize 2.0
Plural-Forms: nplurals=2; plural=n != 1;
 
Σύνταξη:
             #   το 'dest' μπορεί να είναι το "trash:/" για τη μετακίνηση αρχείων
            #   στον κάδο απορριμάτων.
             #   η σύντομη έκδοση kioclient cp
            #   είναι επίσης διαθέσιμη.

             #   η σύντομη έκδοση kioclient mv
            #   είναι επίσης διαθέσιμη.

             #   η σύντομη έκδοση kioclient rm
            #   είναι επίσης διαθέσιμη.

   kioclient cat 'url'
            # Γράφει τα περιεχόμενα του 'url' στο stdout

   kioclient copy 'src' 'dest'
            # Αντιγράφει το URL 'src' στο 'dest'.
            #   Το 'src' μπορεί να είναι λίστα από URL.
   kioclient download ['src']
            # Αντιγράφει το URL 'src' σε μία τοποθεσία ορισμένη από τον χρήστη.
            #   Το 'src' μπορεί να είναι μία λίστα από URLs. Αν δεν καθοριστεί, τότε
            #   θα ζητηθεί η εισαγωγή ενός URL.

   kioclient exec 'url' ['mimetype']
            # Προσπαθεί να ανοίξει το αρχείο που καθορίζεται από το 'url' στη
            #    συσχετισμένη εφαρμογή του KDE. Μπορείτε να παραλείψετε το
            #   'mimetype'. Σε αυτήν την περίπτωση το mimetype καθορίζεται
            #   αυτόματα. Το URL μπορεί βεβαίως να αναφέρεται σε ένα
            #   έγγραφο, ή σε ένα αρχείο *.desktop file.
            #   Το 'url' μπορεί να είναι και εκτελέσιμο.
   kioclient exec .
             // Ανοίγει τον τρέχοντα κατάλογο. Πολύ βολικό.

   kioclient exec file:/home/weis/data/test.html
             // Ανοίγει το αρχείο στην προκαθορισμένη εφαρμογή

   kioclient exec file:/root/Desktop/emacs.desktop
             // Εκτελεί τον emacs

   kioclient exec ftp://localhost/
             // Ανοίγει το URL σε νέο παράθυρο

   kioclient ls 'url'
            # Γράφει τη λίστα με τα περιεχόμενα του καταλόγου 'url' στο stdout

   kioclient move 'src' 'dest'
            # Μετακινεί το URL 'src' στο 'dest'.
            #   Το 'src' μπορεί να είναι μία λίστα από URL.
   kioclient openProperties 'url'
            # Ανοίγει ένα μενού ιδιοτήτων

   kioclient remove 'url'
            # Απομακρύνει το URL
            #   Το 'url' μπορεί να είναι μία λίστα από URL.
 *** Παραδείγματα:
 %1: Συντακτικό σφάλμα, όχι αρκετά ορίσματα
 %1: Συντακτικό σφάλμα, πάρα πολλά ορίσματα
 %1: Συντακτικό σφάλμα, άγνωστη εντολή '%2'
 Ορίσματα για την εντολή Εντολή (βλέπε --commands) Εργαλείο γραμμής εντολών για δικτυακές λειτουργίες URL προορισμού Προορισμός για τη λήψη των αρχείων Πελάτης KIO Μη διαδραστική χρήση: χωρίς διαλόγους μηνυμάτων. Αν επιθυμείτε γραφική σύνδεση, χρησιμοποιήστε το --platform offscreen Αντικατάσταση προορισμού εάν υπάρχει (για αντιγραφή και μετακίνηση) Εμφάνιση διαθέσιμων εντολών Πηγή URL ή URLs εντολή αρχείο ή URL url urls... 