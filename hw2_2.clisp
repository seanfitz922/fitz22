; Sean Fitzgerald sef23d

(defun DLDFS (tree depth)

    (cond 
        ((atom tree) (if tree (list tree) '()))  ; check to see if leaf node, return as list
        ; ((atom tree) (list tree)) this works as well but leaves NIL's in output

        ((= depth 0) '()) ; stop at depth

        (t (append (DLDFS (car tree) (- depth 1)) (DLDFS (cdr tree) depth))) ; traverse left -> right through child nodes, and decrement depth

    ) 


)

; (print (DLDFS '((A (B)) C (D)) 2))