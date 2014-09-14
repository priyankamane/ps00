;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;istrue: List -> Boolean
;Returns true if all the booleans in the list are true
;Examples: 
;(istrue empty) = false
;(istrue (list true false true)) = false
;(istrue (list true true true true) = true

;list-length: List -> Number
;Returns the length of the given list
;Examples: 
;(list-length empty) = 0
;(list-length (list 1)) = 1
;(list-length (list 1 2 3) = 3

(define (list-length lst) 
  (cond
        [(empty? lst) 0]
        [else (+ 1 (list-length (rest lst)))]))


(define (istrue lst) 
  (cond [(empty? lst) false]
        [(= (list-length lst) 1) (first lst)]
        [else (and (first lst) (istrue (rest lst)))]))

(istrue empty)
(istrue (list true false true))
(istrue (list true true true true))