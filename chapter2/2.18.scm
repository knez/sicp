(define (reverse items)
  (if (null? (cdr items))
      items
      (append (reverse (cdr items))
              (cons (car items) '()))))

(reverse (list 1 4 9 16 25))
