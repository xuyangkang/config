(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'org)
;; TODO: extract a "compile-if-updated" function
;; TODO: put these functions in a namespace
(org-babel-tangle-file (concat user-emacs-directory "bootstrap.org"))
(load-file (concat user-emacs-directory "bootstrap.el"))
(byte-compile-file (concat user-emacs-directory "bootstrap.el"))

(require 'bootstrap)
