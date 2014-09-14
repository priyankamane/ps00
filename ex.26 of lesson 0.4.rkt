;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

(define-struct point (x y))

(define (list-length lst) 
  (cond
    [(empty? lst) 0]
    [else (+ 1 (list-length (rest lst)))]))

(define (drawcircle lst) 
  (cond [(= 1 (list-length lst)) (empty-scene 300 300)] 
        [(>= (list-length lst) 1) (place-image (circle 10 "solid" "blue") (point-x (first lst)) (point-y (first lst)) (drawcircle (rest lst)))]))


(define n (list (make-point 1 1) (make-point 15 80) (make-point 250 250) (make-point 120 150)))

(drawcircle n)

