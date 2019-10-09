; Simpson’s rule for numerical integration

(define (cube x) (* x x x))

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a) (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (add2h a) (+ a h h))
  (* (/ h 3)
     (+ (f a)
        (f b)
        (* 4 (sum f (+ a h) add2h (- b h)))
        (* 2 (sum f (add2h a) add2h (- b h h))))))

(integral cube 0 1 100)

