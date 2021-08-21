(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(defvar *db* nil)

(defun add-record (cd)
  (push cd *db*))

(add-record (make-cd "Roses" "Kathy Mattea" 7 t))
(add-record (make-cd "Fly" "Dixie Chicks" 8 t))
(add-record (make-cd "Home" "Dixie Chicks" 9 t))

(defun dump-db ()
  (dolist (cd *db*)
    (format t "title:  ~a~%" (getf cd :title))
    (format t "artist: ~a~%" (getf cd :artist))
    (format t "rating: ~a~%" (getf cd :rating))
    (format t "ripped: ~a~%~%" (getf cd :ripped))))

(defun dump-db2 ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(defun dump-db3 ()
  (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

(dump-db)
(format t "-----~%")
(dump-db2)
(format t "-----~%")
(dump-db3)
