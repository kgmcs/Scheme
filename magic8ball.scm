;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;        Name: Kyla Garcia McShane
;;   Course Info: CSC153 - Spring 2021
;;   Description: Final Project Explorations
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;; Although this program is in a zip file, I strongly advice (require) running it on replit since it was made using BiwaScheme Interpreter version 0.6.4 which is not what most Scheme interpreters use.
;; Link to run on replit: https://replit.com/@KylaGarcia/Magic-8-Ball#main.scm

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

(define magic-eightball-responses 
  (list "It is certain.\n" "It is decidedly so.\n" "Without a doubt.\n" "Yes - definitely.\n" "You may rely on it.\n" "As I see it yes.\n" "Most likely.\n" "Outlook good.\n" "Yes.\n" "Signs point to yes.\n" "Reply hazy try again.\n" "Ask again later.\n" "Better not tell you now.\n" "Cannot predict now.\n" "Concentrate and ask again.\n" "Don't count on it.\n" "My reply is no.\n" "My sources say no.\n" "Outlook not so good.\n""Very doubtful.\n"))

(define (length list)
   (cond ((null? list)
          0)
         (else
          (+ 1 (length (cdr list))))))
;; https://www.cs.utexas.edu/ftp/garbage/cs345/schintro-v14/schintro_46.html

(define len-responses (length magic-eightball-responses))

(define (random-element list)
  (list-ref list (random-integer (length list))))
;; https://stackoverflow.com/questions/4174839/random-function-in-scheme
;; https://www.rosettacode.org/wiki/Pick_random_element#Racket

(define random-response (random-element magic-eightball-responses))

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
;; https://people.eecs.berkeley.edu/~bh/ssch21/functions-implement.html
;; https://rosettacode.org/wiki/Magic_8-ball#Racket
;; https://rebelsky.cs.grinnell.edu/Courses/CSC151/2016S/readings/simple-input-reading.html

;; https://www.cs.cmu.edu/Groups/AI/html/r4rs/r4rs_8.html#:~:text=The%20length%20of%20a%20list,and%20its%20length%20is%20zero.
