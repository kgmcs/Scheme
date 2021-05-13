;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;        Name: Kyla Garcia McShane
;;   Course Info: CSC153 - Spring 2021
;;   Description: Final Project Explorations
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;; Although this program is in a zip file, I strongly advice (require) running it on replit since it was made using BiwaScheme Interpreter version 0.6.4 which is not what most Scheme interpreters use.
;; Link to run on replit: https://replit.com/@KylaGarcia/Magic-8-Ball#main.scm

;; ASCII art made by me last semester.
(display "  __  __          _____ _____ _____    ___        _____          __    __   \n")
(display " |  \\/  |   /\\   / ____|_   _/ ____|  / _ \\      |  __  \\   /\\  |  |  |  |    \n")
(display " | \\  / |  /  \\ | |  __  | || |      | (_) | ___ | |__/ /  /  \\ |  |  |  |    \n")
(display " | |\\/| | / /\\ \\| | |_ | | || |       > _ < |___||  __  \\ / /\\ \\|  |  |  |    \n")
(display " | |  | |/ ____ \\ |__| |_| || |____  | (_) |     | |__/  / ____ \\  |__|_ |___ \n")
(display " |_|  |_/_/    \\_\\_____|_____\\_____|  \\___/      |______/_/    \\_\\_____|_____|\n")
(display "                                                      \n")
(display "                               _.a$$$$$$a._           \n")
(display "                             ,$$$$$$$$$$$$$$.         \n")
(display "                           ,$$$$$$$$$$$$$$$$$$.       \n")
(display "                          d$$$$$$$$$$$$$$$$$$$$b      \n")
(display "                         d$$$$$$$$$~\'\'\'~$$$$$$$$b \n")
(display "                        ($$$$$$$$p       q$$$$$$$$)   \n")
(display "                         $$$$$$$$    8    $$$$$$$$    \n")
(display "                        ($$$$$$$$b       d$$$$$$$$)   \n")
(display "                         q$$$$$$$$$a._.a$$$$$$$$$p    \n")
(display "                          q$$$$$$$$$$$$$$$$$$$$$p     \n")
(display "                           \'$$$$$$$$$$$$$$$$$$$\'     \n")
(display "                             \'$$$$$$$$$$$$$$$\'       \n")
(display "                               \'\\$$$$$$$$$/'         \n\n")
;; https://replit.com/@KylaGarcia/CSC111-a3-magic-8-ball#main.py

;; Create a list with the possible responses the magic 8-ball will give the user.
(define magic-eightball-responses 
  (list "It is certain.\n" "It is decidedly so.\n" "Without a doubt.\n" "Yes - definitely.\n" "You may rely on it.\n" "As I see it yes.\n" "Most likely.\n" "Outlook good.\n" "Yes.\n" "Signs point to yes.\n" "Reply hazy try again.\n" "Ask again later.\n" "Better not tell you now.\n" "Cannot predict now.\n" "Concentrate and ask again.\n" "Don't count on it.\n" "My reply is no.\n" "My sources say no.\n" "Outlook not so good.\n""Very doubtful.\n"))

;; In order to create a random element function, a function determining the length of the list must be created.
(define (length list)
   (cond ((null? list)
          0)
         (else
          (+ 1 (length (cdr list)))))) ;; In this case, the length of the list is 20 (elements).
;; Code directly taken and slightly adapted from: https://www.cs.utexas.edu/ftp/garbage/cs345/schintro-v14/schintro_46.html

;; Apply the length function to our magic-eightball-responses list to obtain amount of elements.
(define len-responses (length magic-eightball-responses)) ;; 20 elements in the magic-eightball-responses list.

;; Create a function to randomly select a element from magic-eightball-responses
(define (random-element list)
  (list-ref list (random-integer (length list)))) ;; BiwaScheme uses random-integer instead of random.
;; https://stackoverflow.com/questions/4174839/random-function-in-scheme
;; https://www.rosettacode.org/wiki/Pick_random_element#Racket

;; Apply random-element function to magic-eightball-responses.
(define random-response (random-element magic-eightball-responses))
;; One bug that this program has originates from the random-integer behavior. Instead of selecting a random response every time the user chose to ask a question, the program would select a single random response and output it every time the user asked different questions.

;; Create a small loop to allow user-input and allow the magic 8-ball to output a response.
(define magic-eightball
  (let loop ()
   (display "\nI am the Mighty Magic 8-Ball. Ask away and wisdom ye shall find:\n")
   (newline)
   (read)
   (newline)
   (display "My wisdom tells thee: ")
   (display random-response)
   (display "\nRerun program to ask for more wisdom.\n")
   (display "\nIf ye have no more questions... Farewell! Be on thy way!\n")
   )
;; This loop was adapted to compensate for the odd/bugged behavior of random-integer.
;; https://people.eecs.berkeley.edu/~bh/ssch21/functions-implement.html
;; https://rosettacode.org/wiki/Magic_8-ball#Racket
;; https://rebelsky.cs.grinnell.edu/Courses/CSC151/2016S/readings/simple-input-reading.html

;; General References:
;; https://www.cs.cmu.edu/Groups/AI/html/r4rs/r4rs_8.html#:~:text=The%20length%20of%20a%20list,and%20its%20length%20is%20zero.
;; http://rigaux.org/language-study/syntax-across-languages-per-language/Scheme.html
;; https://web-artanis.com/scheme.html
;; http://homepage.divms.uiowa.edu/~slonnegr/plf/LectureB.pdf
;; https://www.gnu.org/software/guile/manual/html_node/index.html#SEC_Contents
