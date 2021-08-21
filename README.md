Practical Common Lisp
=====================

This directory contains notes and examples taken while studying the
book [Practical Common Lisp][PCL].


Contents
--------

* [Chapter Notes](#chapter-notes)
  * [Chapter 1: Why Lisp?](#chapter-1-why-lisp)
  * [Chapter 2: A Tour of the REPL](#chapter-2-a-tour-of-the-repl)
  * [Chapter 3: A Simple Database](#a-simple-database)


Chapter Notes
-------------

### Chapter 1: Why Lisp?

Here are some notes from [chapter 1][PCL01] of the book:

  - You'll get more done, faster, using it (Lisp) than you would using
    pretty much any other language.

  - Common Lisp program tends to provide a much clearer mapping
    between your ideas about how the program works and the code you
    actually write.

  - Common Lisp provides several features to help you develop your
    code incrementally and interactively.

  - On one hand, Lisp is one of computer science's "classical"
    languages, based on ideas that have stood the test of time. On the
    other, it's a thoroughly modern, general-purpose language whose
    design reflects a deeply pragmatic approach to solving real
    problems as efficiently and robustly as possible.

Here are some additional notes:

  - Lisp is not a single programming language. It is a family of
    programming languages with a distinctive fully parenthesized
    prefix notation. Some popular dialects of Lisp are Common Lisp,
    Scheme, Clojure, Emacs Lisp, Racket, etc.

  - Common Lisp is a dialect of Lisp with an ANSI standard. There are
    many implementations of Common Lisp in the form of compilers as
    well as interpreters. Some examples are Steel Bank Common Lisp
    (SBCL), Clozure CL (CCL), CLISP, etc. Take a look at
    https://common-lisp.net/implementations for examples of more
    implementations. Clozure CL should not be confused with Clojure.
    Clozure CL is a compiler implementation for Common Lisp whereas
    Clojure is a separate dialect of Lisp meant for the Java platform.


### Chapter 2: A Tour of the REPL

I have created a minimal Emacs starter kit named
[Emacs4CL](https://github.com/susam/emacs4cl) for beginners to quickly
set up a development environment for Common Lisp. It contains a
detailed README that provides a step by step explantion of how to set
up the development environment.

Here are some notes form [chapter 2][PCL02] of the book:

  - While reading this chapter, ignore references to *Lisp in a Box*
    because your development environment must be already set up using
    Emacs4CL as mentioned in the previous unit.

  - Also, ignore the point about key-sequence `C-c C-q` to insert
    closing parentheses. This functionality has been removed from
    SLIME since the book was written, so that point is obsolete.
    Moreoever, we don't need it because we use Paredit to
    automatically insert closing parentheses.

Here is a recap of Emacs key bindings introduced in this chapter:

  - `C-x C-f`: Open a new file in Emacs, e.g., `C-x C-f hello.lisp RET`.
  - `C-x C-s`: Save current buffer to file.
  - `C-x b`: Switch buffer, e.g., `C-x b hello.lisp RET`.

Here is a recap of SLIME key bindings introduced in this chapter:

  - `C-c C-c`: Compile the current toplevel form using SLIME.
  - `C-c C-l`: Load file into REPL using SLIME.
  - `C-c C-k`: Compile and load file into REPL using SLIME.
  - `C-c C-z`: Switch to SLIME output buffer (REPL).
  - `,`: Enter SLIME REPL shortcut command, e.g., `, quit RET`, `, pwd
    RET`, [etc.][slime-shortcuts].
  - `q`: Quit SLIME debugger.

[slime-shortcuts]: https://common-lisp.net/project/slime/doc/html/Shortcuts.html

Here is a recap of Emacs help key bindings introduced in this chapter:

  - `C-h t`: Start Emacs learn-by-doing tutorial.
  - `C-h i`: Enter Info, the documentation browser.
  - `h`: When in the info system, this key runs the info-help tutorial.
  - `C-h ?`: Shows all key combinations for help starting with `C-h`.
  - `C-h k`: Show documentation for a key-sequence, e.g., `C-h k C-x C-s`.
  - `C-h w`: List key-sequences that invoke a command, e.g., `C-h w
    save-buffer RET`.

Some additional key bindings not mentioned in the chapter but very useful:

  - `C-x C-e`: Evaluate the expression before the cursor using SLIME.
  - `C-M-x`: Evaluate the current toplevel form using SLIME.
  - `M-p`: Search previous input in SLIME REPL with current input as pattern.
  - `M-n`: Search next input in SLIME REPL with current input as pattern.
  - `C-<up>`: Get previous input at the SLIME REPL.
  - `C-<down>`: Get next input at the SLIME REPL.
  - `C-h C-h`: Same as `C-h ?`. Easier to type than `C-h ?`.
  - `C-h o`: Show documentation for a symbol, e.g., `C-h o slime RET`.

Note (Optional): On macOS, `C-<up>` may bring up the Mission Control, a
feature that displays all windows and virtual desktops. As a result,
`C-<up>` may not get the previous input at the SLIME REPL. There are two
ways to work around this: You may disable `C-<up>` as the key
combination for Mission control by going to Apple menu > System
Preferences > Keyboard > Shortcuts and deselecting Mission Control.
Alternatively, you may use `M-p`. The key-sequence `M-p` behaves like
`C-<up>` when there is no input at the REPL prompt.

I have picked what I feel are the most important Emacs/SLIME commands
in the list below. One can go a long way with the following commands
only, so if you are a beginner, I recommend beginners to practice
these first, practice them often, and feel free to ignore the other
commands until you feel comfortable with the ones in the list below:

  - `C-x C-f`: Open a new file in Emacs, e.g., `C-x C-f hello.lisp RET`.
  - `C-x C-s`: Save current buffer to file.
  - `C-x b`: Switch buffer, e.g., `C-x b hello.lisp RET`.
  - `C-x C-e`: Evaluate the expression before the cursor using SLIME.
  - `C-c C-c`: Compile the current toplevel form using SLIME.
  - `C-c C-k`: Compile and load file into REPL using SLIME.
  - `q`: Quit SLIME debugger.
  - `M-p`: Search previous input in SLIME REPL with current input as pattern.
  - `M-n`: Search next input in SLIME REPL with current input as pattern.
  - `C-h k`: Show documentation for a key-sequence, e.g., `C-h k C-x C-s`.
  - `C-h o`: Show documentation for a symbol, e.g., `C-h o slime RET`.

Here are the code examples written for this chapter:

  - [ex/001-hello.lisp](ex/001-hello.lisp)
  - [ex/002-load.lisp](ex/002-load.lisp)
  - [ex/003-compile.lisp](ex/003-compile.lisp)


### Chapter 3: A Simple Database

Here is a recap of some of the important points from [chapter 3][PCL03].

  - Common Lisp provides three distinct kinds of operators:
    - *functions*
    - *macros*
    - *special operators*
  -   - Common Lisp provides three distinct kinds of operators:
    - *functions*
    - *macros*
    - *special operators*
  - You can make a list with the `LIST` function, which, appropriately
    enough, returns a list of its arguments.
  - A property list (or plist for short) where every other element,
    starting with the first, is a symbol that describes what the next
    element in the list is.
  - The function `GETF` takes a plist and a symbol and returns the value
    in the plist following the symbol, making a plist a sort of poor
    man's hash table.
  - `DEFUN` tells us that this form is defining a new function.
  - You can use a global variable, `*db*`, which you can define with
    the `DEFVAR` macro.
  - You can use the `PUSH` macro to add items to `*db*`. It returns
    the new value of the variable it's modifying.
  - The `DOLIST` macro binds each element of a list to a variable in
    turn.
  - `FORMAT` takes at least two arguments, the first being the stream
    where it sends its output; `t` is shorthand for the stream
    `*standard-output*`.
  - The call to `FORCE-OUTPUT` is necessary in some implementations to
    ensure that Lisp doesn't wait for a newline before it prints the
    prompt.
  - You can read a single line of text with the aptly named
    `READ-LINE` function.
  - The variable `*query-io*` is a global variable that contains the
    input stream connected to the terminal.
  - The default behavior of `PARSE-INTEGER` is to signal an error if
    it can't parse an integer out of the string or if there's any
    non-numeric junk in the string.
  - The `OR` macro is similar to the "short-circuiting" `||` in Perl,
    Python, Java, and C; it takes a series of expressions, evaluates
    them one at a time, and returns the first non-nil value (or `NIL`
    if they're all `NIL`).
  - `Y-OR-N-P` will reprompt the user if they enter something that
    doesn't start with y, Y, n, or N.
  - The `LOOP` macro repeatedly executes a body of expressions until
    it's exited by a call to `RETURN`.

### Chapter N: Title

DO NOT MODIFY THIS. COPY THIS AND MODIFY.

Here are some notes from [chapter N][PCL000] of the book:

  - foo

Here are some additional notes:

  - foo

Here are some additional notes from [CLHS]:

  - foo

Here are the code examples written for this chapter:

  - [.lisp](.lisp)


[PCL]: http://www.gigamonkeys.com/book/
[PCL01]: http://www.gigamonkeys.com/book/introduction-why-lisp.html
[PCL02]: http://www.gigamonkeys.com/book/lather-rinse-repeat-a-tour-of-the-repl.html
[PCL03]: http://www.gigamonkeys.com/book/practical-a-simple-database.html
[PCL04]: http://www.gigamonkeys.com/book/syntax-and-semantics.html
[PCL05]: http://www.gigamonkeys.com/book/functions.html
[PCL06]: http://www.gigamonkeys.com/book/variables.html
[PCL07]: http://www.gigamonkeys.com/book/macros-standard-control-constructs.html
[PCL08]: http://www.gigamonkeys.com/book/macros-defining-your-own.html
[PCL09]: http://www.gigamonkeys.com/book/practical-building-a-unit-test-framework.html
[PCL10]: http://www.gigamonkeys.com/book/numbers-characters-and-strings.html

[CLHS]: http://www.lispworks.com/documentation/HyperSpec/Front/index.htm
