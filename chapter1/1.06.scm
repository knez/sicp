; Attempts to calculate the square root of a number with
; the new-if procedure instead of the "if" special form.
; Since new-if is a standard procedure, scheme will try to
; evaluate all of its parameters. Because the third parameter contains
; a recursive call to the sqrt-iter, the whole process will repeat,
; until eventually causing stack overflow.

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.0001))

(define (square x) (* x x))

(sqrt 9)
