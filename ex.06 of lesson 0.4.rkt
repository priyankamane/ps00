;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.6 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;quadratic-root: Number Number Number -> Number
;GIVEN: a, b and c of a quadratic expression
;RETURNS: root of corresponding quadratic expression
;EXAMPLES:
;(quadratic-root 4 4 1) => -0.5
;(quadratic-root 1 2 1) => -1

(define (quadratic-root a b c) 
  (/ (+ (- b) 
        (sqrt (- (* b b) 
                 (* 4 a c)))) 
     (* 2 a)))

(quadratic-root 4 4 1)
(quadratic-root 1 2 1)