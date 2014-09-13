;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.8 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;area: Number -> Number
;GIVEN: the radius of a circle 
;RETURNS: area of the circle using the formula pi*r*r
;Examples:
;(area 1) =>  
;(area 5) => 
;(area 7) =>

(define (area r) (* pi r r))
(area 1)
(area 5)
(area 7)