(define (slice_helper lst count)
	(if (> num 0)
		(cons
			(car lst)
			(slice_helper
				(cdr lst)
				(- count 1)
			)
		)

		`()
	)
)

;; TODO: how to use this?
(define (slice lst start count)
	(if (> start 1)
		(slice
			(cdr lst)
			(- start 1)
			count
		)

		(slice_helper
			lst
			count
		)
	)
)

(define (generate_sublists lst start len)

)

;; Contract: is_non_desc : list_of_numbers number -> boolean
;; Purpose: check if the list is non-descending, given the previous element
;; Example: (is_non_desc `(2 3 1) 1) should produce #f
;; Definition
(define (is_non_desc lst curr)
	(cond
		( (null? lst)
			#t
		)

		( (< (car lst) curr)
			#f
		)

		(else
			(is_non_desc
				(cdr lst)
				(car lst)
			)
		)
	)
)

;; Contract: is_non_desc_driver : list_of_numbers -> boolean
;; Purpose: driver function for is_non_desc
;; Example: (is_non_desc `(1 2 3 1)) should produce #f
;; Definition
(define (is_non_desc_driver lst)
	(if (= (length lst) 1)
		#t

		(is_non_desc
			(cdr lst)
			(car lst)
		)
	)
)

;; TODO: implement pseudocode
(define (slow lst l)
	(if (eq? l 1)
		; if length of list is 1, return that list
		lst


	)
)


;; Contract: lis_slow : list_of_numbers -> list_of_numbers
;; Purpose: to compute the greates non-descending subsequence of the input list in O(2^n) time
;; Example: (lis_slow `(1 2 3 4 1)) should produce (1 2 3 4)
;; Definition
(define (lis_slow lst)
	(slow
		lst
		(length lst)
	)
)

;; Contract: lis_fast : list_of_numbers -> list_of_numbers
;; Purpose: to compute the greates non-descending subsequence of the input list in polynomial time
;; Example: (lis_fast `(1 2 3 4 1)) should produce (1 2 3 4)
;; Definition
(define (lis_fast lst)

)