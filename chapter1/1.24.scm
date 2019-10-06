; The measured results correspond to the logarithmic scale
; On my machine, for n = 1.000.000.000, prime finishes in about 1500ms
; while fast-prime needs only 13ms, assuming times=3
; This performance gap only increases as n gets larger

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m))
                                m))
        (else (remainder (* base (expmod base (- exp 1) m))
                         m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ (random (- n 1)) 1)))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 3)
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
