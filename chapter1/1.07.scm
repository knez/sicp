; Simple test will fail for small numbers like 0.001. The threshold in the
; testing function is not small enough, as a result, giving inaccurate
; approximation. For really large numbers, like 1e+13, the resulting
; difference in the good-enough? function will never fall within the threshold
; due to limited precision in arithmetic operations. This causes infinite loop.

; Auxiliary procedure
(define (average a b) (/ (+ a b) 2))

; Improved Newton's method for square roots
(define (sqrt x)
  (define (good-enough? prev next)
    (< (abs (- prev next)) 0.0001))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter prev next)
    (if (good-enough? prev next)
        next
        (sqrt-iter next (improve next))))
  (sqrt-iter 0.0 1.0))
