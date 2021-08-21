(format t "~&~a~%" (parse-integer "123")) ; 123

(format t "~&~a~%" (parse-integer "123a" :junk-allowed t)) ; 123
(format t "~&~a~%" (parse-integer "abcd" :junk-allowed t)) ; NIL
(format t "~&~a~%" (parse-integer "a123" :junk-allowed t)) ; NIL

(format t "~&~a~%" (or (parse-integer "123a" :junk-allowed t) 0)) ; 123
(format t "~&~a~%" (or (parse-integer "abcd" :junk-allowed t) 0)) ; 0
(format t "~&~a~%" (or (parse-integer "a123" :junk-allowed t) 0)) ; 0

;; junk in string "123a"
;; (format t "~&~a~%" (parse-integer "123a"))
