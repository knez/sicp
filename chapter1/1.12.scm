; Pascal's triangle
;     1
;    1 1
;   1 2 1
;  1 3 3 1
; 1 4 6 4 1
;    ...

(define (pascal row col)
  (cond ((= col 1) 1)
        ((= row 1) 0)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 5 3)
