;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)


(empty-scene 300 300)

(define (placepoint posn) 
  (place-image (circle 10 "solid" "blue") posn-x posn-y (empty-scene 300 300))) 
  
(define (drawcircle lst) 
  (cond [(empty? lst) (empty-scene 300 300)]
        [else (+ (placepoint (first lst)) (placepoint (rest lst)))]))

 (define n (list (make-point 1 1) (make-point 15 8) (make-point 50 50) (make-point 120 150)))
(drawcircle n)