; When exponent is even, procedure expmod is needlessly being called twice
; This generates the tree recursion that grows exponentially
; However, because the depth of that tree is log2(n), the final complexity
; will be 2^log2(n) which is same as n, hence θ(n)

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (* (expmod base (/ exp 2) m)
             (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base
             (expmod base (- exp 1) m))
          m))))
