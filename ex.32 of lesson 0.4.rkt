;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.32 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;Design a function that takes a list of Points and returns the sum of all distances of that Points from (0,0).
;You should write a helper function to calculate the distance. For simplicity, you can use the Manhattan distance measure (distance = x + y).

(define-struct point (x y))

(define (list-length lst) 
  (cond
    [(empty? lst) 0]
    [else (+ 1 (list-length (rest lst)))]))

(define (helper lst) (cond
                       [(empty? lst) 0]
                       [(= (list-length lst) 1) (cons (+ (point-x (first lst)) (point-y (first lst))) empty)]
                       [else (cons (+ (point-x (first lst)) (point-y (first lst))) (helper (rest lst)))]))

(define (manhatten-dist lst)
  (cond [(empty? lst) 0]
        [else (+ 1 (helper (first lst)) (manhatten-dist (rest lst)))]))

(define p1(make-point 1 1))
(define p2(make-point 5 3))
(define p3(make-point 6 6))

(define n (list p1 p2 p3))
(manhatten-dist n)
#|
(manhatten-dist (list (make-point 5 3)
                      (make-point 1 1)
                      (make-point 6 6)))
|#