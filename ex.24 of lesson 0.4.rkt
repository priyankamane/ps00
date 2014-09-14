;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;prod: List -> Number
;Returns the product of the numbers in the given list
;Examples: 
;(prod empty) = 0
;(prod (list 3)) = 3
;(prod (list 1 2 3) = 6

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

(define (prod lst) 
  (cond [(empty? lst) 0]
        [(= (list-length lst) 1) (first lst)]
        [else (* 1 (first lst) (prod (rest lst)))]))

(prod (list 0))
(prod (list 1 4 6))
(prod (list 2 3 0 4))
(prod empty)
(prod (list 3))
(prod (list 1 2 3))