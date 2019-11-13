(define (filter predicate items)
  (cond ((null? items) '())
        ((predicate (car items))
         (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))))

(define (same-parity first . rest)
  (cons first
        (filter (lambda (x) (even? (+ first x))) rest)))

(same-parity 1 2 3 4 5 6)
