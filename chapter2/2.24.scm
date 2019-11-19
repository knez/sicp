(list 1 (list 2 (list 3 4))) ; Prints (1 (2 (3 4)))
;
; Box-and-pointer structure
;
; [ * * ]--->[ * nil ]
;   |          |
;   1        [ * * ]--->[ * nil ]
;              |          |
;              2        [ * * ]--->[ * nil ]
;                         |          |
;                         3          4
;
; Tree representation
;
;     (1 (2 (3 4)))
;         /\
;        /  \
;       1    * (2 (3 4))
;            /\
;           /  \
;          2    * (3 4)
;               /\
;              /  \
;             3    4
