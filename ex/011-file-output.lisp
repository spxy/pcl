(defvar *db*
  (list (list :a "apple" :b "ball" :c "cat")
        (list :a "alice" :b "bob" :c "carol")))

(with-open-file (out "/tmp/items.db" :direction :output :if-exists :supersede)
  (print *db* out))
