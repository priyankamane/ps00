;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.31 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))

(require 2htdp/image)

(define (returnimage lst) 
  (cond [(empty? lst) (circle 1 "solid" "white")]
        [(= (length lst) 1) (cons (circle (first lst) "solid" "pink") empty)]
                   [else (cons (circle (first lst) "solid" "pink") (returnimage (rest lst)))]))

(returnimage (list 10 4 6 80))