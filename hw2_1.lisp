; Sean Fitzgerald sef23d

(defun DFS (tree)

  (cond 
    ((atom tree) (if tree (list tree) '()))  ; check to see if leaf node, return as list

    ; ((atom tree) (list tree)) this works as well but leaves NIL's in output

    (t (append (DFS (car tree)) (DFS (cdr tree)))) ; traverse left -> right through child nodes

    ) 
)

;(print (DFS '((A (B)) C (D))))  ; (A B C D)
