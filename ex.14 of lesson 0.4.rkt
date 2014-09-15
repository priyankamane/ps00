;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ex.14 of lesson 0.4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; a student is a (make-student PosReal PosReal PosReal)
;with this racket created a data structure named student, which takes three parameters, id, name and major
; id is the Identification Number of the student (Number)
; id is the Name of the student (String)
; id is the Major of the student (String)
#|
(define (stuent-fun s)
  (... (student-id s) 
       (student-name s)
       (student-major s)))
|#
;EXAMPLE:
;(student (3 "ABC" "Science"))

(define-struct student (id name major))
