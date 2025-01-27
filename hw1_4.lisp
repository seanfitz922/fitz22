; Sean Fitzgerald sef23d

(defun FASTFIB (n)
    
    (let ((a 0) (b 1)) ; init a,b

        (cond ; Input handling
            ((< n 0) (print "Error in input"))

            ((= n 0) a)

            ((= n 1) b)

            (t (FIB_HELPER n a b)) ; recursivley call fibhelper to calc fib(n)
        )
    )
)


(defun FIB_HELPER (n a b)

    (if (= n 0)
        a ; return result when n = 0
        (
            FIB_HELPER (- n 1) b (+ a b) ; perform recursion with newly updated values
        )
    )
)

(print (FASTFIB 1000))

