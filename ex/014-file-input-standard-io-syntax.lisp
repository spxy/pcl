(with-open-file (in "/tmp/items.db")
  (with-standard-io-syntax
    (format t "~&read: ~a~%" (read in))))
