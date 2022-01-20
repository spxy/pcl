(defvar *db*
  (list (list :a "apple" :b "ball" :c "cat")
        (list :a "alice" :b "bob" :c "carol")))

(setf *print-length* 4)

(with-open-file (out "/tmp/items.db" :direction :output :if-exists :supersede)
  (with-standard-io-syntax
    (print *db* out)))

;; This time the complete list is written successfully to the file
;; despite *print-length* value being 4. That's because we are using
;; with-standard-io-syntax now.

(with-open-file (in "/tmp/items.db")
  (with-standard-io-syntax
    (format t "~&read: ~a~%" (read in))))
