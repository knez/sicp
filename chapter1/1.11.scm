; f(n) = n if n < 3 and
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3

; Compute f by means of a recursive process
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))

; Compute f by means of an an iterative process
(define (f-iter n)
  (define (iter a b c count)
    (if (= count 0)
        a
        (iter b
              c
              (+ c (* 2 b) (* 3 a))
              (- count 1))))
  (iter 0 1 2 n))
