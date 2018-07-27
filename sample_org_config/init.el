;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(require 'org)
(org-babel-tangle-file (concat user-emacs-directory "bootstrap.org"))
(load-file (concat user-emacs-directory "bootstrap.el"))
(byte-compile-file (concat user-emacs-directory "bootstrap.el"))

(require 'bootstrap)
