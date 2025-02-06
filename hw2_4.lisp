; Sean Fitzgerald sef23d


(defun DLDFS (tree depth)
  (cond 
    ((atom tree) (if tree (list tree) '()))  ; If it's a leaf node, return it as a list
    ((= depth 0) '())                       ; If we've reached the maximum depth, stop the recursion
    (t (append (DLDFS (car tree) (- depth 1))   ; Traverse left subtree
               (DLDFS (cdr tree) depth)))))   ; Traverse right subtree

(defun DFID (tree max-depth)
  (cond
    ((> max-depth 0) 
     (append (DLDFS tree max-depth)  ; Perform DFS for the current depth
             (DFID tree (- max-depth 1))))  ; Recursively call DFID with the reduced depth
    (t '())))  ; Base case, when max-depth is 0, return an empty list


(print (dfid '((A (B)) C (D)) 3))