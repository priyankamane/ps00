;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.27a|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)

(define (textmaker lst) (cond [(empty? lst) (text " " 30 "blue")]
                              [else (beside (text (first lst) 30 "blue") (text " " 30 "blue") (textmaker (rest lst)))]))

(textmaker (list "hi" "this" "is" "me"))