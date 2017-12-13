
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'better-defaults)

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
