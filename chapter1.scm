(define (abs a)
	(if(> a 0) a (- 0 a)))

(define (good-enough? guess x)
	(< (abs (- (* guess guess) x)) 0.01))

(define (avg a b) (/ (+ a b) 2))

(define (improve guess x)
	(avg (/ x guess) guess))

(define (sqrt-helper guess x)
	(if(good-enough? guess x)
		guess
		(sqrt-helper (improve guess x) x )))

(define (sqrt x) 
	(sqrt-helper 1.0 x ))
;(define (expr a x)
;	(cond ((= x 1) a)
;	      (else (* a (expr a (- x 1))))))
;(define (square x) (* x x))
