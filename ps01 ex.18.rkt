;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(rectangle 2 4 "solid" "blue")
(rectangle 4 8 "solid" "blue")
(rectangle 8 16 "solid" "blue")
(rectangle 16 32 "solid" "blue")

(define (my-rectangle n) (rectangle (expt 2 n) (expt 2 (+ 1 n)) "solid" "blue"))
(my-rectangle 5)
(my-rectangle 6)
(my-rectangle 7)