; A more general version of accumulate
(define (filtered-accumulate combiner null-value predicate term a next b)
  (define (iter a result)
    (cond ((> a b) result)
          ((predicate a) (iter (next a) (combiner result (term a))))
          (else (iter (next a) result))))
  (iter a null-value))

(define (sum-square-primes a b)
  (filtered-accumulate + 0 prime? square a inc b))

(define (prod-integers a b)
  (define (relative-prime? i)
    (= (gcd i b) 1))
  (filtered-accumulate * 1 relative-prime? identity a inc b))

(sum-square-primes 1 10) ; 4 + 9 + 25 + 49 = 87
(prod-integers 1 10)     ; 1 * 3 * 7 * 9 = 189
