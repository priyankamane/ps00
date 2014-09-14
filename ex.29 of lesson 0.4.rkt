;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.29|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

(define person-draw (above (circle 10 "solid" "grey")
                           (beside (rectangle 23 5 "solid" "gray") 
                                   (rectangle 25 15 "solid" "blue")
                                   (rectangle 23 5 "solid" "gray"))
                           (rectangle 25 25 "solid" "blue")
                           (beside (rectangle 5 27 "solid" "gray")
                                   (rectangle 4 27 "solid" "white")
                                   (rectangle 5 27 "solid" "gray"))))

(define-struct person (first-name last-name age height weight))

(define (person-image p) (above (scale (person-height p) 
                                       person-draw)
                                (text (string-append (person-first-name p)
                                                     "  " 
                                                     (person-last-name p))
                                      15 "black")))
(define (people lst) (cond [(empty? lst) (text "." 30 "white")]
                           [else (beside/align "baseline" 
                                               (person-image (first lst)) 
                                               (people (rest lst)))]))

(people (list (make-person "abc" "xyz" 30 5 60) 
              (make-person "def" "uvw" 30 4 60) 
              (make-person "lmn" "pqr" 30 2 60) 
              (make-person "lmn" "pqr" 30 3 60)))

