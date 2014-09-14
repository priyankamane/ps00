;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.28|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)


(define (stringappend lst) (cond [(empty? lst) " "]
                                 [else (string-append (first lst) " " (stringappend (rest lst)))]))

(define (displaytext lst) (text (cond [(empty? lst) " "]
                                 [else (stringappend lst)]) 30 "black"))

(displaytext (list "hi" "this" "is" "me"))

(displaytext empty)

(define (combinetext lst) (cond [(empty? lst) (text "---------------x---------------" 30 "gray")]
                                [else (above (displaytext (first lst)) (combinetext (rest lst)))]))  

(combinetext (list (list "hi" "this") (list "is" "me") (list "wassup" "ya'll")))
