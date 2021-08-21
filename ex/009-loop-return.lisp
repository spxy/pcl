;; This is the kind of loop that was presented in the book. However, I
;; consider this as a bad use of (if (not ...)) since it can be more
;; elegantly written using (unless ...). See the second example in
;; this file for a better way to write this loop.
(loop (format t "looping ...")
      (if (not (y-or-n-p "are you having fun?"))
          (return)))
(format t "loop terminated~&")

;; A better way to write the above loop using (unless ...).
(loop (format t "looping ...")
      (unless (y-or-n-p "are you having fun?")
        (return)))
(format t "loop terminated~&")
