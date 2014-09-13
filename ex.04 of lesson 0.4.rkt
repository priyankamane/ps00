;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.4 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;tip: NonNegNumber Number[0.0,1.o] -> Number
;GIVEN: the amount of the bill in dollars and the 
;percentage of tip
;RETURNS: the amount of the tip in dollars
;EXAMPLES: 
;(tip 10 0.15) =>1.5
;(tip 20 0.17) =>3.4
(define (tip b p) (* b  p))
(tip 10 0.15)
(tip 20 0.17)