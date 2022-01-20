(with-open-file (in "/tmp/items.db")
  (format t "~&read: ~a~%" (read in)))
