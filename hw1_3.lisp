; Sean Fitzgerld sef23d

(defun SUMS (n)
  (if (not (atom n))                      ; Check if n is not atomic
      (print "Error: input number")                
      (if (or (= n 0) (= n 1))            ; Base case: if n is 0 or 1, return 0
          0  
          (+ 1 (SUMS (- n 1)) (SUMS (- n 2))) ; recursion for SUMS, add one every iteratio
        )
    )
)

; (print (SUMS 3)) Verbatim "or example (SUMS 3) should return1"
; How would this be 1? Should it not be 2? 
; F(2) = F(1) + F(0) = 1
; F(3) = F(2) + F(1) = 2 
; This is most likely a misunderstanding on my end
