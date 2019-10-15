; Finite continued fraction, approximates 1/φ
; For k = 11, algorithm is accurate to 4 decimal places

(define (cont-frac n d k)
  (define (frac-rec i)
    (if (> i k)
        0
        (/ (n i)
           (+ (d i) (frac-rec (inc i))))))
  (frac-rec 1))

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (= i 0)
        result
        (iter (dec i) (/ (n i)
                         (+ (d i) result)))))
  (iter k 0))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           11)
