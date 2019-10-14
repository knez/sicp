(define (average a b) (/ (+ a b) 2))
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? a b)
    (< (abs (- a b)) tolerance))
  (define (try guess)
    (display guess)
    (newline)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

; Without average damping: 34 steps
(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)

; With average damping: 9 steps
(fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0)

