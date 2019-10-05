; The time measured increases roughly by a factor of 3, which is close
; to the sqrt(10) - the quotient between each consecutive test search.
; So the algorithm runs in time proportional to the number of steps
; required for the computation

(define (square x) (* x x))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes from to)
  (define (start-search cur)
    (if (>= to cur) (timed-prime-test cur))
    (if (>= to cur) (start-search (+ cur 2))))
  (if (even? from)
      (start-search (inc from))
      (start-search from)))
    
(search-for-primes 1000 1020)
(search-for-primes 10000 10037)
(search-for-primes 100000 100043)
(search-for-primes 1000000 1000037)
