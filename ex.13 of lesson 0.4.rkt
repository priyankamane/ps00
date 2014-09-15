;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.13 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;point: Number Number -> Point
; a point is a (make-point PosReal PosReal)
; x is the x-coordinate of the point
; y is the y-coordinate of the point
#|
(define (point-fun p)
  (... (point-x p) 
       (point-y p)))
|#
(define-struct point (x y))
(make-point true false)            ;should creat a point with co-ordinates as(true,false)
(point-x (make-point true false))  ;should return true