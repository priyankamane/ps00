;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.10 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;largest-two: Number -> Number
;GIVEN: three input numbers
;RETURNS: sum of the larger two numbers
;Examples:
;(largest-two 1 3 2) => 5 
;(largest-two 5 10 9) => 19

(define (largest-two x y z) (cond [(and (> x z) (> y z)) (+ x y)]
                                  [(and (> x y) (> z y)) (+ x z)]
                                  [(and (> z x) (> y x)) (+ z y)]))
(largest-two 1 3 2)
(largest-two 5 10 9)