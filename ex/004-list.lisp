;;; List
(list 1 2 3)
(list "foo" "bar" "baz")
(list 1 "bar" 2/3)

;;; Property list (plist)
(list :a 1 :b 2 :c 3)

;;; getf finds a property on the plist whose property indicator is
;;; identical to indicator, and returns its corresponding property value.
(getf (list :a 1 :b 2 :c 3) :b)

;;; Same examples with FORMAT.
(format t "~&~a~%" (list 1 2 3))
(format t "~&~a~%" (list "foo" "bar" "baz"))
(format t "~&~a~%" (list 1 "bar" 2/3))
(format t "~&~a~%" (list :a 1 :b 2 :c 3))
(format t "~&~a~%" (getf (list :a 1 :b 2 :c 3) :b))



