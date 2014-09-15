;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.30 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define neg (list ))

(define (negative lst) (cond
                   [(empty? lst) "empty list"]
                   [(= (length lst) 1) (cons (not (first lst)) empty)]
                   [else (cons (not (first lst)) (negative (rest lst)))]))

(negative neg)
(negative (list true false true))
(negative (list true false true false))




#|
(not true)
(list 1 2 3 4)
|#