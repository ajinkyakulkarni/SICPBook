;; Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
	((= x 0) (* 2 y))
	((= y 1) 2)
	(else (A (- x 1)
		 (A x (- y 1))))))

(A 1 10)
;; (A 0 (A 1 9))
;; (* 2 (A 1 9))
;; (* 2 (A 0 (A 1 8)))
;; (* 2 (* 2 (A 1 8)))
;; (* 2 (* 2 (A 0 (A 1 7))))
;; (* 2 (* 2 (* 2 (A 1 7))))
;; (* 2 (* 2 (* 2 (A 0 (A 1 6)))))
;; (* 2 (* 2 (* 2 (* 2 (A 1 6)))))
;; (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 5))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 5))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 4)))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 4)))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 3))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 3))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 2)))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 2)))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 1))))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 1 1))))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 4))))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 8)))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 16))))))
;; (* 2 (* 2 (* 2 (* 2 (* 2 32)))))
;; (* 2 (* 2 (* 2 (* 2 64))))
;; (* 2 (* 2 (* 2 128)))
;; (* 2 (* 2 256))
;; (* 2 512)
;; 1024

(A 2 4)
;; (A 1 (A 2 3))
;; (A 1 (A 1 (A 2 2)))
;; (A 1 (A 1 (A 1 (A 2 1))))
;; (A 1 (A 1 (A 1 2)))
;; (A 1 (A 1 (A 0 (A 1 1))))
;; (A 1 (A 1 (A 0 2)))
;; (A 1 (A 1 (* 2 2)))
;; (A 1 (A 1 4))
;; (A 1 16); --> 2^4
;; 65536; --> 2^16

(A 3 3)
;; (A 2 (A 3 2))
;; (A 2 (A 2 (A 3 1)))
;; (A 2 (A 2 2))
;; (A 2 4); --> (A 2 2) = 4 from above
;; 65536; --> From above
;; 
