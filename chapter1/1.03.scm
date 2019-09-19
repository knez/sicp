; Sums up the squares of two larger numbers
(define (square x) (* x x))
(define (square-sum-two-larger a b c)
  (+ (square (max a b))
     (square (max (min a b)
                  c))))
