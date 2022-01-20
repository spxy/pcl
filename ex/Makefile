001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 \
016 017 018 019 020 021 022 023 024 025 026 027 028 029 030:
	sbcl --script $@*.lisp

file-io-matrix:
	# Write file using SBCL without standard I/O syntax
	sbcl --script 011-file-output.lisp
	cat /tmp/items.db; echo; echo
	sbcl --script 013-file-input.lisp; echo
	sbcl --script 014-file-input-standard-io-syntax.lisp; echo
	clisp 013-file-input.lisp; echo
	clisp 014-file-input-standard-io-syntax.lisp; echo
	# Write file using SBCL with standard I/O syntax
	sbcl --script 012-file-output-standard-io-syntax.lisp
	cat /tmp/items.db; echo; echo
	sbcl --script 013-file-input.lisp; echo
	sbcl --script 014-file-input-standard-io-syntax.lisp; echo
	clisp 013-file-input.lisp; echo
	clisp 014-file-input-standard-io-syntax.lisp; echo
	# Write file using CLISP without standard I/O syntax
	clisp 011-file-output.lisp
	cat /tmp/items.db; echo; echo
	sbcl --script 013-file-input.lisp; echo
	sbcl --script 014-file-input-standard-io-syntax.lisp; echo
	clisp 013-file-input.lisp; echo
	clisp 014-file-input-standard-io-syntax.lisp; echo
	# Write file using CLISP with standard I/O syntax
	clisp 012-file-output-standard-io-syntax.lisp
	cat /tmp/items.db; echo; echo
	sbcl --script 013-file-input.lisp; echo
	sbcl --script 014-file-input-standard-io-syntax.lisp; echo
	clisp 013-file-input.lisp; echo
	clisp 014-file-input-standard-io-syntax.lisp; echo
