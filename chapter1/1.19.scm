; Fibonacci in θ(log(n))
;
; a  -> bq + aq + ap
; b  -> bp + aq
;-----------------------------------
; b' -> (bp + aq)p + (bq + aq + ap)q
; b' -> bpp + apq + bqq + aqq + apq
; b' -> b(pp + qq) + a(pq + pq + qq)
;-----------------------------------
; p' = pp + qq
; q' = 2pq + qq

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (* p p) (* q q))         ; p'
                   (+ (* p q) (* p q) (* q q)) ; q'
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
