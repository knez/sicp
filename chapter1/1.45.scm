; Compute nth root of a number

(define tolerance 0.00001)

(define (close-enough? a b)
  (< (abs (- a b)) tolerance))

(define (average a b)
  (/ (+ a b) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1)
      f
      (compose f (repeated f (dec n)))))

(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (fixed-point-of-transform f transform guess)
  (fixed-point (transform f) guess))

(define (nth-root n x)
  (let ((count (floor (/ (log n) (log 2)))))
    (fixed-point-of-transform
     (lambda (y) (/ x (expt y (dec n))))
     (repeated average-damp count)
     1.0)))

(nth-root 5 32)