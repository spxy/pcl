(format t "~A~%" (compile-file "001-hello.lisp"))
(format t "-----~%")
(load (compile-file "001-hello.lisp"))
