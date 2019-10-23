; n-th repeated application of f

(define (square x) (* x x))

(define (repeated f n)
  (define (repeat g i)
    (if (= i 0)
        g
        (repeat (f g) (dec i))))
  (lambda (x) (repeat x n)))

((repeated square 2) 5)
