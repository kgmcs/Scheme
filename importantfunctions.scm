;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;        Name: Kyla Garcia McShane
;;   Course Info: CSC153 - Spring 2021
;;   Description: Final Project Explorations
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;; Although this program is in a zip file, I strongly advice (require) running it on replit since it was made using BiwaScheme Interpreter version 0.6.4 which is not what most Scheme interpreters use.
;; Link to run on replit: https://replit.com/@KylaGarcia/Most-Important-Functions#main.scm

;; Some of the most important functions in Scheme are the cons, car, and cdr functions. 
;; This small compilation of programs will seek to demonstrate how these work and different ways they can be implemented.

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       The 'cons' function                     \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; The cons function takes two values and joins them in a pair.
;; The cons function can also be used to create a list-like construction, but one must keep in mind that they will still be considered conjoined pairs.
;; The term cons is an acronym for the word "construction."

(display "Example of cons to form a pair: (cons a b) => (a . b) \n\n")
(display (cons 1 2)) ;; (1 . 2)
(newline)
(display (cons 3 4)) ;; (3 . 4)
(newline)
(newline)

(display "Example of cons to form an improper list: (cons 'a (cons 'b (cons 'c '()))) => (a b c) \n\n")
(display (cons 'chocolate (cons 'marshmallow (cons 'lollipop '())))) ;; (chocolate marshmallow lollipop)
(newline)
(display (cons 'ramen (cons 'sushi (cons 'takoyaki '())))) ;; (ramen sushi takoyaki)
(newline)
(display (cons 'cheeseburger (cons 'hamburger (cons 'coca-cola '())))) ;; (cheeseburger hamburger coca-cola)
(newline)

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       The 'car' function                     \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; The car of a list is essentially the first item of a list.
;; The term car is an acronym for Contents of the Address part of the Register.
;; car does not change a list, it simply reports which makes it non-destructive.

(display "Example for the car of a list: car '(a b c d) => a \n\n")
(define mexican-food '(enchiladas nachos tacos quesadillas))
(display mexican-food)
(newline)
(display (car mexican-food)) ;; car '(enchiladas nachos tacos quesadillas)
(newline)
(newline)

(display "Example for the car of a pair car '(a . b) => a \n\n")
(define flowers '(roses . violets))
(display flowers)
(newline)
(display (car flowers)) ;; car '(roses . violets)
(newline)
(newline)

;; The function set-car! does alter the list or pair it is applied to.

(display "Example of set-car! on a list: \n\n")
(define pastries '(croissant strudel pretzel cannoli))
(display pastries)
(newline)
(set-car! pastries 'cake)
(display pastries)
(newline)
(newline)

(display "Example of set-car! on a pair: \n\n")
(define alice-in-wonderland '(tweedledee . tweedledum))
(display alice-in-wonderland)
(newline)
(set-car! alice-in-wonderland 'alice)
(display alice-in-wonderland)
(newline)

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       The 'cdr' function                     \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; The cdr of a list is the rest of the list by simply reporting what remains of the lest after the car.
;; the term cdr is an acronym for Contents of the Decrement part of the Register.
;; It is also considered non-destructive.

(display "Example for the cdr of a list: cdr '(a b c d) => (b c d) \n\n")
(display mexican-food)
(newline)
(display (cdr mexican-food))
(newline)
(newline)

(display "Example for the cdr of a pair: cdr '(a . b) => b \n\n")
(display flowers)
(newline)
(display (cdr flowers))
(newline)
(newline)

;; The function set-cdr! also alters the remainder of the list it is applied to.

(display "Example of set-cdr! on a list: \n\n")
(display mexican-food)
(newline)
(set-cdr! mexican-food '(tortillas empanadas sopes))
(display mexican-food)
(newline)
(newline)

(display "Example of set-cdr! on a pair: \n\n")
(display alice-in-wonderland)
(newline)
(set-cdr! alice-in-wonderland '(mad-hatter))
(display alice-in-wonderland)
(newline)

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                         Combinations                           \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; The function cadr takes the car of the cdr, which gives the second item in the list.
(display "Example combining cons, car, and cadr: \n")
(define list1 '(1 2 3))
(display list1)
(newline)
(define list2 '(4 5))
(display list2)
(newline)

(display (list (cons (car list1) (car list2))
      (cons (cadr list1) (cadr list2))))
(newline)

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                     References and Sources                     \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

(display "1. https://medium.com/@aleksandrasays/my-other-car-is-a-cdr-3058e6743c15\n")
(display "2. https://www.gnu.org/software/emacs/manual/html_node/eintr/cons.html\n")
(display "3. https://www.gnu.org/software/emacs/manual/html_node/eintr/car-_0026-cdr.html\n")
