; Procedure demonstrates that Carmichael numbers really do fool the Fermat test
; Known smallest Carmichael numbers: 561, 1106, 1729, 2465, 2821, 6601

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test a n)
  (= (expmod a n n) a))

(define (carmichael-test n)
  (define (carmichael-iter a)
    (cond ((= a 0) true)
          ((fermat-test a n) (carmichael-iter (dec a)))
          (else false)))
  (carmichael-iter (dec n)))

(carmichael-test 561)
(carmichael-test 1105)
(carmichael-test 1729)
(carmichael-test 2465)
(carmichael-test 2821)
(carmichael-test 6601)
