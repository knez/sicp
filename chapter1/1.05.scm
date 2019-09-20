; Ben Bitdiddle's test for determining if the interpreter
; uses the normal-order or applicative-order evaluation.
; Test will output 0 if normal-order is used, because parameters
; are being only substituted, and than evaluated when needed.
; If the applicative-order is used, parameters will be evaluated
; even before function is called, which will cause infinite loop.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))
