; The first parameter of cons is a new element which is always
; being prepended to the answer, thus reversing the order.

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons (square (car things))
                    answer))))
  (iter items nil))

; Changing the arguments order does not help either.
; This procedure generates the following output for (list 1 2 3):
; (((nil . 1) . 4) . 9)

(define (square-list items)
  (define (iter things answer)
    (if (null? things)
        answer
        (iter (cdr things)
              (cons answer
                    (square
                     (car things))))))
  (iter items nil))
