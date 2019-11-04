; Line segment
(define (make-segment start end) (cons start end))
(define (start-segment segment)  (car segment))
(define (end-segment   segment)  (cdr segment))

; Point
(define (make-point x y) (cons x y))
(define (x-point point) (car point))
(define (y-point point) (cdr point))

; Perimeter
(define (perimeter rect)
  (* 2 (+ (width rect) (length rect))))

; Area
(define (area rect)
  (* (width rect) (length rect)))

; First implementation, upper-left point, width and length
(define (make-rect upper-left width length)
  (cons upper-left (cons width length)))

(define (width  rect) (car (cdr rect)))
(define (length rect) (cdr (cdr rect)))

(area (make-rect (make-point 0 3) 7 3))

; Alternatively, expressed as a pair of points
;(define (make-rect upper-left bottom-right)
;  (make-segment upper-left bottom-right))
;
;(define (length rect)
;  (abs (- (x-point (start-segment rect))
;          (x-point (end-segment rect)))))
;
;(define (width rect)
;  (abs (- (y-point (start-segment rect))
;          (y-point (end-segment rect)))))
;
;(area (make-rect (make-point 0 3) (make-point 7 0)))

