; Approximate cubic x^3 + ax^2 + bx + c

(define (cube x) (* x x x))

(define (cubic a b c)
  (lambda (x)
    (+ (cube x)
       (* a (square x))
       (* b x) c)))
