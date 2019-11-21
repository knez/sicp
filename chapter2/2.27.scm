(define (deep-reverse items)
  (if (not (pair? items))
      items
      (append (deep-reverse (cdr items))
              (list (deep-reverse (car items))))))

(deep-reverse (list (list 1 2) (list 3 4)))
