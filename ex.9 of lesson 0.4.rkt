;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.9 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(remainder 10 -5)
(remainder 15 4)
(remainder 2 7)

(modulo 10 -5)
(modulo 15 -4)

;even: Number -> Boolean
;GIVEN: determine if the number is even or not 
;RETURNS: true if the number is even, false otherwise
;Examples:
;(even 1) => false
;(even 30 => true

(define (even n) (cond [(= (modulo n 2) 0) 
                        true]
                       [else false]))
  (even 1)
  (even 30)