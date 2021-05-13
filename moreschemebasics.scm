;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;;        Name: Kyla Garcia McShane
;;   Course Info: CSC153 - Spring 2021
;;   Description: Final Project Explorations
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

;; Although this program is in a zip file, I strongly advice (require) running it on replit since it was made using BiwaScheme Interpreter version 0.6.4 which is not what most Scheme interpreters use.
;; Link to run on replit: https://replit.com/@KylaGarcia/More-Scheme-Basics#main.scm
;; Replit edit link if first link does not work: https://replit.com/join/ludoavhs-kylagarcia

;; This small sample of functions seeks to further demonstrate some basics of Scheme which I then implemented in my Magic 8-Ball Project.

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       Booleans                    \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; In Scheme, the standard Boolean objects for true and false are denoted by #t and #f.
;; Additionally, Boolean constants don't require quotes since they "evaluate themselves."
(display "Example of Boolean constants: \n")
(display #t) ;; should return => #t
(newline)
(display #f) ;; should return => #f
(newline)
(newline)

;; When not (logical) is placed in front of one of these Boolean objects it will return #t if obj is false.
;; If otherwise, not obj will return #f.

(display "Example of not obj and Boolean constants: \n")
(display (not #f)) ;; should return => #t
(newline)
(display (not #t)) ;; should return => #f
(newline)
(display (not '())) ;; should return => #f
(newline)
(display (not (list))) ;; should return => #f
(newline)
(display (not 'nil)) ;; should return => #f
(newline)
(newline)

;; Another important procedure is boolean? obj.
;; Boolean? returns #t if obj is either #t or #f.
;; It returns #f if otherwise.
(display "Examples of boolean? obj: \n")
(display (boolean? #f)) ;; should return =>  #t
(newline)
(display (boolean? 0)) ;; should return =>  #f
(newline)
(display (boolean? 'nil)) ;; should return => #f
(newline)

;; Within Booleans, the use of or / and can also be found in Scheme.

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       null?                    \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; null? checks/returns #t if object is an empty list.
;; If it is not empty, it will return #f. (Glad I talked about Booleans!)

(display "Example of null?: \n")
(display (null? '(a . b))) ;; should return =>  #f
(newline)
(display (null? '(a b c))) ;; should return =>  #f
(newline)
(display (null? '())) ;; should return =>  #t
(newline)
(newline)

;; empty? essentially works the same way as null? although null? is preferable to empty? in Scheme.

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                       Mathematics                    \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")

;; Scheme's mathematical notations matchup with previously studied programs, the only change is in syntax. For mathematical procedures, the decired procedure's notation is placed at the front (to the left) of the arguments involved.

(display "Examples of addition: \n")
(display (+ 5 4)) ;; should return => 9
(newline)
(display (+ 3)) ;; should return  =>  3
(newline)
(display (+)) ;; should return =>  0
(newline)
(newline)

(display "Examples of multiplication: \n")
(display (* 4)) ;; should return =>  4
(newline)
(display (* 7 2)) ;; should return => 14
(newline)
(display (*)) ;; should return => 1
(newline)
(newline)

(display "Examples of subtraction: \n")
(display (- 3 4)) ;; should return => -1
(newline)
(display (- 3 4 5)) ;; should return =>  -6
(newline)
(display (- 3)) ;; should return =>  -3
(newline)
(newline)

(display "Examples of division: \n")
(display (/ 3 4 5)) ;; should return =>  3/20
(newline)
(display (/ 3)) ;; should return =>  1/3
(newline)
(newline)

;; The max and min functions return the maximum and minimum of the arguments they are given.
(display "Examples of max and min: \n")
(display (max 3 4)) ;; should return =>  4  (exact)
(newline)
(display (max 3.9 4)) ;; should retur =>  4.0  (inexact)
(newline)
(newline)

;; The abs procedure returns the absolute value of the argument it is given.
(display "Examples of abs: \n")
(display (abs -14)) ;; should return => 14
(newline)
(display (abs 6)) ;; should return => 6
(newline)
(newline)

(display "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n")
(display "                     References and Sources                     \n")
(display "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ \n\n")
  
(display "1. https://stackoverflow.com/questions/16969378/scheme-empty-list-expression\n")
(display "2. https://groups.csail.mit.edu/mac/ftpdir/scheme-7.4/doc-html/scheme_8.html\n")
(display "3. https://www.cs.cmu.edu/Groups/AI/html/r4rs/r4rs_8.html\n")
(display "4. https://courses.cs.washington.edu/courses/cse341/02sp/scheme/basics.html\n")
(display "5. http://rigaux.org/language-study/syntax-across-languages-per-language/Scheme.html\n")
