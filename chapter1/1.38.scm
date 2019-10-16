; Approximate Euler's number e = 2.7182...

(define (cont-frac n d k)
  (define (frac-rec i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i) (frac-rec (inc i))))))
  (frac-rec 2))

(+ 2 (cont-frac (lambda (i) 1.0)
                (lambda (i)
                  (if (= (remainder i 3) 0)
                      (* 2 (/ i 3))
                      1))
                10))
