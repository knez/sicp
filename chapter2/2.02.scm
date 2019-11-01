(define (average x y) (/ (+ x y) 2))

(define (make-segment start end) (cons start end))
(define (start-segment segment)  (car segment))
(define (end-segment   segment)  (cdr segment))

(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (midpoint-segment line)
  (let ((startpoint (start-segment line))
        (endpoint   (end-segment   line)))
    (make-point (average (x-point startpoint)
                         (x-point endpoint))
                (average (y-point startpoint)
                         (y-point endpoint)))))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

(print-point (midpoint-segment
              (make-segment (make-point 2 3)
                            (make-point 4 5))))
