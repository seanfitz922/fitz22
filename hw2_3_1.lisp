; Sean Fitzgerald sef23d

(defun bfs (tree)
  (cond
    ((null tree) '())
    ((atom (car tree)) (cons (car tree) (bfs (cdr tree))))
    (t (append (bfs (cdr tree)) (bfs (car tree))))))

(print (BFS '((A (B)) C (D)))) ; would return (C A D B).

