; Sean Fitzgerald sef23d



; Sean Fitzgerald sef23d

(defun BFS (tree)

    (cond 

        ((null tree) '())

        (( not ( atom ( car tree))) ( append ( BFS ( car tree)) ( BFS ( cdr tree))))

        t(append (BFS (list( (car tree)) ) (BFS (cdr tree ))))

    )
)

(print (BFS '((A (B)) C (D)))) ; would return (C A D B).

(defun bfs (tree)
  (if (atom tree)
      (list tree)
      (append (remove-if-not #'atom tree)
              (bfs (apply #'append (remove-if #'atom tree))))))