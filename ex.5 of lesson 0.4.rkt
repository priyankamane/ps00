;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.5 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;sq: Number->Number
;GIVEN: a number whose square we need to find
;RETURNS: square of a number
;EXAMPLEs:
;(sq 4) => 16
;(sq 19) => 361

(define (sq n) (* n n))
(sq 4)
(sq 19)