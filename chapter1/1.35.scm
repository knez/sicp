; φ = (1 + √5)/2
; f(φ) = 1 + 1/φ = 1 + 1/((1 + √5)/2) = 1 + 2/(1 + √5)
; = 1 + 2/(1 + √5) * (1 - √5)/(1 - √5) = 1 + (-1 + √5)/2
; = (1 + √5)/2 = φ

(define tolerance 0.0001)

(define (fixed-point f first-guess)
  (define (close-enough? a b)
    (< (abs (- a b)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; Compute φ
(fixed-point (lambda (x) (+ 1 (/ 1 x)))
             1.0)
