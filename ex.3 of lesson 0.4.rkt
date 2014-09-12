;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.3 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;f->c: Number->Number
;GIVEN: a temperature in degrees Fahrenheit as an argument
;Returns: the equivalent temperature in degrees Celcius
;Examples:
; (f->c 32) => 0
; (f->c 100) > 37.77777777777778

(define (temp-conv f) 
  (* (- f 32) 
     (/ 5 9)))

(temp-conv 32)
(temp-conv 100)