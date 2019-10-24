(define (average a b) (/ (+ a b) 2))

(define (iterative-improve good-enough? improve)
  (define (iter guess)
    (let ((next (improve guess)))
      (if (good-enough? guess next)
          next
          (iter next))))
  (lambda (first-guess) (iter first-guess)))

; Square root in terms of iterative-improve
(define (sqrt x)
  ((iterative-improve
    (lambda (a b) (< (abs (- a b)) 0.0001))
    (lambda (guess) (average guess (/ x guess))))
   1.0))

; Fixed-point in terms of iterative-improve
(define (fixed-point f)
  ((iterative-improve
    (lambda (a b) (< (abs (- a b)) 0.0001))
    (lambda (guess) (f guess)))
   1.0))

