;CS 351
;Jeremy Ojeda
;Caesar cipher program

(defun encodeFun(x)

  (defvar letter)

  (cond((eq 'A x)(setf letter 0))
       ((eq 'B x)(setf letter 1))
       ((eq 'C x)(setf letter 2))
       ((eq 'D x)(setf letter 3))
       ((eq 'E x)(setf letter 4))
       ((eq 'F x)(setf letter 5))
       ((eq 'G x)(setf letter 6))
       ((eq 'H x)(setf letter 7))
       ((eq 'I x)(setf letter 8))
       ((eq 'J x)(setf letter 9))
       ((eq 'K x)(setf letter 10))
       ((eq 'L x)(setf letter 11))
       ((eq 'M x)(setf letter 12))
       ((eq 'N x)(setf letter 13))
       ((eq 'O x)(setf letter 14))
       ((eq 'P x)(setf letter 15))
       ((eq 'Q x)(setf letter 16))
       ((eq 'R x)(setf letter 17))
       ((eq 'S x)(setf letter 18))
       ((eq 'T x)(setf letter 19))
       ((eq 'U x)(setf letter 20))
       ((eq 'V x)(setf letter 21))
       ((eq 'W x)(setf letter 22))
       ((eq 'X x)(setf letter 23))
       ((eq 'Y x)(setf letter 24))
       ((eq 'Z x)(setf letter 25))
       
       )
       
  (setf letter (mod (+ letter 5) 26))
  
  (cond((eq 0 letter)(setq letter 'A))
       ((eq 1 letter)(setq letter 'B))
       ((eq 2 letter)(setq letter 'C))
       ((eq 3 letter)(setq letter 'D))
       ((eq 4 letter)(setq letter 'E))
       ((eq 5 letter)(setq letter 'F))
       ((eq 6 letter)(setq letter 'G))
       ((eq 7 letter)(setq letter 'H))
       ((eq 8 letter)(setq letter 'I))
       ((eq 9 letter)(setq letter 'J))
       ((eq 10 letter)(setq letter 'K))
       ((eq 11 letter)(setq letter 'L))
       ((eq 12 letter)(setq letter 'M))
       ((eq 13 letter)(setq letter 'N))
       ((eq 14 letter)(setq letter 'O))
       ((eq 15 letter)(setq letter 'P))
       ((eq 16 letter)(setq letter 'Q))
       ((eq 17 letter)(setq letter 'R))
       ((eq 18 letter)(setq letter 'S))
       ((eq 19 letter)(setq letter 'T))
       ((eq 20 letter)(setq letter 'U))
       ((eq 21 letter)(setq letter 'V))
       ((eq 22 letter)(setq letter 'W))
       ((eq 23 letter)(setq letter 'X))
       ((eq 24 letter)(setq letter 'Y))
       ((eq 25 letter)(setq letter 'Z))

       )
)

(defun decodeFun(x)

  (defvar letter)

  (cond((eq 'A x)(setf letter 0))
       ((eq 'B x)(setf letter 1))
       ((eq 'C x)(setf letter 2))
       ((eq 'D x)(setf letter 3))
       ((eq 'E x)(setf letter 4))
       ((eq 'F x)(setf letter 5))
       ((eq 'G x)(setf letter 6))
       ((eq 'H x)(setf letter 7))
       ((eq 'I x)(setf letter 8))
       ((eq 'J x)(setf letter 9))
       ((eq 'K x)(setf letter 10))
       ((eq 'L x)(setf letter 11))
       ((eq 'M x)(setf letter 12))
       ((eq 'N x)(setf letter 13))
       ((eq 'O x)(setf letter 14))
       ((eq 'P x)(setf letter 15))
       ((eq 'Q x)(setf letter 16))
       ((eq 'R x)(setf letter 17))
       ((eq 'S x)(setf letter 18))
       ((eq 'T x)(setf letter 19))
       ((eq 'U x)(setf letter 20))
       ((eq 'V x)(setf letter 21))
       ((eq 'W x)(setf letter 22))
       ((eq 'X x)(setf letter 23))
       ((eq 'Y x)(setf letter 24))
       ((eq 'Z x)(setf letter 25))

       )

  (setf letter (mod (- letter 5) 26))

 (cond((eq 0 letter)(setq letter 'A))
       ((eq 1 letter)(setq letter 'B))
       ((eq 2 letter)(setq letter 'C))
       ((eq 3 letter)(setq letter 'D))
       ((eq 4 letter)(setq letter 'E))
       ((eq 5 letter)(setq letter 'F))
       ((eq 6 letter)(setq letter 'G))
       ((eq 7 letter)(setq letter 'H))
       ((eq 8 letter)(setq letter 'I))
       ((eq 9 letter)(setq letter 'J))
       ((eq 10 letter)(setq letter 'K))
       ((eq 11 letter)(setq letter 'L))
       ((eq 12 letter)(setq letter 'M))
       ((eq 13 letter)(setq letter 'N))
       ((eq 14 letter)(setq letter 'O))
       ((eq 15 letter)(setq letter 'P))
       ((eq 16 letter)(setq letter 'Q))
       ((eq 17 letter)(setq letter 'R))
       ((eq 18 letter)(setq letter 'S))
       ((eq 19 letter)(setq letter 'T))
       ((eq 20 letter)(setq letter 'U))
       ((eq 21 letter)(setq letter 'V))
       ((eq 22 letter)(setq letter 'W))
       ((eq 23 letter)(setq letter 'X))
       ((eq 24 letter)(setq letter 'Y))
       ((eq 25 letter)(setq letter 'Z))

       )
)


(defun flattenList (cipher)
  (if (null cipher)
      nil
    (if (atom (car cipher))
	(cons (car cipher) (flattenList (cdr cipher)))
      (append (flattenList (car cipher)) (flattenList (cdr cipher)))))
)

(defun encode(x)
 (mapcar (lambda (y) (encodeFun y)) (flattenList x))
)

(defun decode(x)
  (mapcar (lambda (y) (decodeFun y)) (flattenList x))
)