
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
(setq multi-term-program "/bin/zsh")
(setq multi-term-switch-after-close t)

;; smex
(el-get-bundle smex)
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; company
(el-get-bundle company-mode)
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

;; flycheck
(el-get-bundle flycheck)
(global-flycheck-mode)

;; golang
(el-get-bundle go-mode)
(require 'go-mode)

;; go-company
(el-get-bundle go-company)
(require 'company-go)

;; yasnippet
(el-get-bundle yasnippet)
(require 'yasnippet)
(yas-global-mode 1)
(el-get-bundle yasnippet-snippets)

;; use space instead of tab
(setq-default indent-tabs-mode nil)

;; do not create backup files
(setq make-backup-files nil)

;; hide start up screen
(setq inhibit-startup-screen t)

;; unset visible-bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; faster window switch
(el-get-bundle switch-window)
(require 'switch-window)
(global-set-key (kbd "C-x o") 'switch-window)
(global-set-key (kbd "C-x 1") 'switch-window-then-maximize)
(global-set-key (kbd "C-x 2") 'switch-window-then-split-below)
(global-set-key (kbd "C-x 3") 'switch-window-then-split-right)
(global-set-key (kbd "C-x 0") 'switch-window-then-delete)

(global-set-key (kbd "C-x 4 d") 'switch-window-then-dired)
(global-set-key (kbd "C-x 4 f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 m") 'switch-window-then-compose-mail)
(global-set-key (kbd "C-x 4 r") 'switch-window-then-find-file-read-only)

(global-set-key (kbd "C-x 4 C-f") 'switch-window-then-find-file)
(global-set-key (kbd "C-x 4 C-o") 'switch-window-then-display-buffer)

(global-set-key (kbd "C-x 4 0") 'switch-window-then-kill-buffer)

(global-set-key (kbd "M-[") 'previous-multiframe-window)
(global-set-key (kbd "M-]") 'next-multiframe-window)

;; remove trailing whitespace when saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; theme
(load-theme 'whiteboard)
