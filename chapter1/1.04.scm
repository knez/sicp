; This procedure calculates the sum of a and the absolute
; value of b, by utilizing operators made of compound expressions
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

