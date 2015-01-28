;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname random-polygon-generator) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
  ;; defining a structure defines 3 primitives- 
  ;; a constructor- a fx that creates structure instances
  ;; from as many values as there are fields.
  ;; a selector- a fx that extracts the values from the 
  ;; field of a structure instance.
  ;; a structure predicate- a fx that distinguishes
  ;; structure instances from other kinds of values
(require 2htdp/image)

(define-struct squared [posn1 posn2 posn3 posn4])

(define (point x)
  (make-posn (random x) (random x)))

(define generator
  (make-squared (point 250) (point 250)
              (point 250) (point 250)))

#;(polygon (list (squared-posn1 generator)
               (squared-posn2 generator)
               (squared-posn3 generator)
               (squared-posn4 generator))
         'solid
         (make-color (random 255) (random 255)
                     (random 255)))

(polygon (list (point 250)
               (point 250)
               (point 250)
               (point 250))
         'solid
         (make-color (random 255) (random 255)
                     (random 255)))