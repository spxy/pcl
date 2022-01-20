(defvar *db*
  (list (list :a "apple" :b "ball" :c "cat")
        (list :a "alice" :b "bob" :c "carol")))

(setf *print-length* 4)

(with-open-file (out "/tmp/items.db" :direction :output :if-exists :supersede)
  (print *db* out))

;; The following code fails with this error: too many dots. The reason
;; for the error is that the *print-length* value of 4 set above
;; causes the following list to be written to the /tmp/items.db file:
;;
;; ((:A "apple" :B "ball" ...) (:A "alice" :B "bob" ...))
(with-open-file (in "/tmp/items.db")
  (format t "~&read: ~a~%" (read in)))
