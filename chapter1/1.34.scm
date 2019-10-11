; Intepreter will complain about wrong arguments
; First call to (f f) will trigger (f 2) just fine 
; From there, (f 2) will attempt to call (2 2) which fails,
; because interpreter expects the operator to be a procedure

(define (f g) (g 2))

(f f)
