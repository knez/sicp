; Iterative logarithmic multiplication
; also known as "Russian peasant method"

(define (double x) (+ x x))
(define (halve  x) (/ x 2))

(define (* a b)
  (define (iter a b c)
    (cond ((= b 0) c)
          ((even? b) (iter (double a) (halve b) c))
          (else (iter a (- b 1) (+ a c)))))
  (iter a b 0))

(* 6 7)
