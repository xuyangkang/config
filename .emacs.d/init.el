
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (require 'package)
  (add-to-list 'package-archives
               '("melpa" . "http://melpa.org/packages/"))
  (package-refresh-contents)
  (package-initialize)
  (package-install 'el-get)
  (require 'el-get))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

;; better-defaults
(el-get-bundle better-defaults)
(require 'better-defaults)

;; multi-term
(el-get-bundle multi-term)
(require 'multi-term)
(setq multi-term-program "/bin/bash")

;; smex
(el-get-bundle smex)
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; use space instead of tab
(setq-default indent-tabs-mode nil)

;; do not create backup files
(setq make-backup-files nil)

;; hide start up screen
(setq inhibit-startup-screen t)

;; unset visible-bell
(setq visible-bell nil)

;; faster window switch
(global-set-key (kbd "M-[") 'previous-multiframe-window)
(global-set-key (kbd "M-]") 'next-multiframe-window)

;; remove trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; theme
(load-theme 'wombat)
