(define (cons a b)
  (* (expt 2 a) (expt 3 b)))

(define (count-in n m)
  (define (iter num count)
    (if (= (remainder num n) 0)
        (iter (/ num n) (+ count 1))
        count))
  (iter m 0))

(define (car z) (count-in 2 z))
(define (cdr z) (count-in 3 z))
