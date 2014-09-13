;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Ex.1 of Lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
#|The number of seconds in a leap year is s |#
#| Let us define s, sec and secs as a three different constants
whose values will be calculated with three different expression|#

#|expression 1|#
(define s (* 60 60 24 366))
s

#|expression 2|# 
(define sec (+ (* 60 60 24 31 7) 
               (* 60 60 24 30 4)
               (* 60 60 24 29)))
  sec

#|expression 3|#
(define secs (+ (* 60 60 24 30 12) 
                (* 60 60 24 6)))
secs