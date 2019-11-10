; Sum of two intervals:
; (a, b) + (c, d) = (a + c, b + d)
; Width of the sum of two intervals:
; (b + d - a - c)/2
;
; Width of the first interval:
; (a, b) = (b - a)/2
; Width of the second interval:
; (c, d) = (d - c)/2
; Addition of two widths:
; (b - a)/2 + (d - c)/2 = (b + d - a - c)/2
;
; Width of the sum of two intervals is a function of
; widths of the intervals being added.
; However, this does not hold for multiplication/division.
;
; Counterexample:
; Multiplication of two intervals:
; (1, 2) * (3, 4) = (3, 8)
; Width of the multiplication of two intervals:
; 5/2
;
; Width of the first interval:
; (1, 2) = 1/2
; Width of the second interval:
; (3, 4) = 1/2
; Multiplication of their widths:
; 1/2 * 1/2 = 1/4
;
; 5/2 != 1/4
