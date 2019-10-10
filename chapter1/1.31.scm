; Recursive product procedure
(define (product term a next b)
  (if (> a b)
      1
      (* (term a) (product term (next a) next b))))

; Iterative product procedure
(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

; Factorial in terms of product
(define (factorial n)
  (product identity 1 inc n))

; Approximation of Pi
(define (pi-prod n)
  (define (pi-next x)
    (+ x 2))
  (define (pi-term x)
    (* (/ x (dec x))
       (/ x (inc x))))
  (* 2 (product-iter pi-term 2.0 pi-next n)))

(pi-prod 1000)
