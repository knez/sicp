; Approximate tangent function based on Lambert's formula

(define (cont-frac n d k)
  (define (frac-rec i)
    (if (> i k)
        0
        (/ (n i)
           (- (d i) (frac-rec (inc i))))))
  (frac-rec 1))

(define (tan-cf x k)
  (cont-frac (lambda (i) (if (= i 1) x (* x x)))
             (lambda (i) (dec (* 2 i)))
             k))

(tan-cf 0.785 10)
