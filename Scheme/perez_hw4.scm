;; 1. yourname
(define yourname 
	(lambda () "Emma Perez"))
	
;; 2. ax+b	
(define ax+b
	(lambda (a x b) (+ (* a x) b)))
	
;; 3. distance, I couldn't figure out how to do this with individual points
(define (sqr x) 
	(* x x))

(define distance
	(lambda (x1 y1 x2 y2)
		(sqrt (+ (sqr (- x2 x1)) (sqr (- y2 y1))))))
		
;; 6. build-list
(define build-list
	(lambda (n)
		(cond ((zero? n) '())
				((positive? n) (cons n (build-list (- n 1))))
				((negative? n) (cons n (build-list (+ n 1)))))))
	
;; 7. dot product 
(define (dotproduct c d)
	(apply + (map * c d)))

;; 8. multiples 
(define multiples
	(lambda (base m)
		(map * (make-list(abs m) base) (build-list m))))
	

;; 9. run-cmd
(define (run-cmd tag e)
	(cond
	(( eq? tag 'plus) (apply + e))
	(( eq? tag 'times) (apply * e))
	(( eq? tag 'append) (apply string-append e))
	(( eq? tag 'cdr) (cdr e ))
			(else (e))))

