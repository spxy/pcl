(defvar *db*
  (list (list :title "Roses" :artist "Kathy Mattea" :rating 7 :ripped t)
        (list :title "Fly" :artist "Dixie Chicks" :rating 8 :ripped t)
        (list :title "Home" :artist "Dixie Chicks" :rating 9 :ripped t)))

(defvar *db* (list "foo" "bar" "baz"))

(with-open-file (out "/tmp/cds.db" :direction :output :if-exists :supersede)
  (with-standard-io-syntax
    (print *db* out)))

(format t "~&*db* written to file:     ~a~%~%" *db*)

(with-open-file (in "/tmp/cds.db")
  (with-standard-io-syntax
    (setf *db* (read in))))

(format t "~&*db* read back from file: ~a~%~%" *db*)
