#lang sicp

; This approach works, however it is very inefficient. The remainder
; has to be calculated from a really huge number (thousands of digits)

(define (square x) (* x x))

(define (fast-expt base exp)
  (cond ((= exp 0) 1)
        ((even? exp) (square (fast-expt base (/ exp 2))))
        (else (* base (fast-expt base (- exp 1))))))

(define (expmod base exp m)
  (remainder (fast-expt base exp) m))

(expmod 123456789 1000000 1000000)
