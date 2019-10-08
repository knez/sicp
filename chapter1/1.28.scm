; Foolproof primality test (Miller-Rabin version)

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (miller-rabin-test
                      (remainder (square (expmod base (/ exp 2) m)) m)
                      m))
        (else (miller-rabin-test
               (remainder (* base (expmod base (- exp 1) m)) m)
               m))))

(define (miller-rabin-test n m)
  (cond ((or (= n 1)
             (= n (- m 1))) n)
        ((= (remainder (square n) m) 1) 0)
        (else n)))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a (- n 1) n) 1))
  (try-it (+ (random (- n 1)) 1)))

(define (smart-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (smart-prime? n (- times 1)))
        (else false)))

(smart-prime? 561 3)
