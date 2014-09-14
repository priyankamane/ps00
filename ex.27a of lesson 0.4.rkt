;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.27a|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(require 2htdp/image)


(define (stringmaker lst) (cond [(empty? lst) " "]
                                 [else (string-append (first lst) " " (stringmaker (rest lst)))]))

(define (displaytext lst) (text (cond [(empty? lst) " "]
                                 [else (stringmaker lst)]) 30 "black"))

(displaytext (list "hi" "this" "is" "me"))
(displaytext empty)
;;(define (displaytxt lst) (text (cond [(empty? lst) " "]
  ;;                             [else (format ""(first lst) " ~a " (displaytxt (rest lst)))]) 30 "black"))
;;(displaytxt (list "hi" "hello" "ssup"))
;(format "Dea~a:ccccc" " ")
;(format "the value of ~s is ~a" '(+ 1 1) (+ 1 1))
(list->string (cons 'c' (cons #\a (cons #\t empty))))