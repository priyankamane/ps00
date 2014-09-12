;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |ps01 ex.15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;(define-struct student (id name major))
;;A student is a (make-student Number String String)
;;It represents a student record
;;Interpretation:
;;id = the identification number of the student
;;name = name of the student in the form of a string
;;major = major that particular student has opted for
(define-struct student (id name major))