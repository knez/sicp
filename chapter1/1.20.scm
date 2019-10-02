; Normal-order evaluation
; (gcd 206 40)
; (gcd 40 (rem 206 40))
; (gcd (rem 206 40) (rem 40 (rem 206 40)))
; (gcd (rem 40 (rem 206 40)) (rem (rem 206 40) (rem 40 (rem 206 40))))
; (gcd (rem (rem 206 40) (rem 40 (rem 206 40))) (rem (rem 40 (rem 206 40)) (rem (rem 206 40) (rem 40 (rem 206 40)))))
; (rem (rem 206 40) (rem 40 (rem 206 40)))
; (rem (rem 206 40) (rem 40 6))
; (rem 6 4)
; 2
; Number of calls to the remainder function: 18
;----------------------------------------------
; Applicative-order evaluation
; (gcd 206 40)
; (gcd 40 (rem 206 40))
; (gcd 40 6)
; (gcd 6 (rem 40 6))
; (gcd 6 4)
; (gcd 4 (rem 6 4))
; (gcd 4 2)
; (gcd 2 (rem 4 2))
; (gcd 2 0)
; 2
; Number of calls to the remainder function: 4

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
