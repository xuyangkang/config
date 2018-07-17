
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
  (require 'el-get)
  (el-get 'sync))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(el-get-bundle use-package)

;; better-defaults
(el-get-bundle better-defaults)
(use-package better-defaults)

(el-get-bundle xclip)
(use-package xclip)
;; (xclip-mode 1)

;; smex
(el-get-bundle smex)
(use-package smex
  :config
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  (smex-initialize))

;; flycheck
(el-get-bundle flycheck)
(use-package flycheck
  :config
  (global-flycheck-mode))

;; golang
(el-get-bundle go-mode)
(use-package go-mode
  :config
  (add-hook 'before-save-hook 'gofmt-before-save))

;; yasnippet
(el-get-bundle yasnippet)
(use-package yasnippet
  :config
  (yas-global-mode 1))

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
(load-theme 'wombat)

(el-get-bundle helm-ag)

(el-get-bundle lsp-mode)
(el-get-bundle lsp-ui)
(use-package lsp-mode
  :config
  (add-hook 'prog-major-mode #'lsp-prog-major-mode-enable))
(use-package lsp-ui
  :config
  (add-hook 'lsp-mode-hook 'lsp-ui-mode))

(el-get-bundle lsp-go)
(use-package lsp-go
  :config
  (add-hook 'go-mode-hook #'lsp-go-enable))

(el-get-bundle company-mode)
(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(el-get-bundle s)
(use-package s)
(el-get-bundle tigersoldier/company-lsp)
(use-package company-lsp
  :config
  (push 'company-lsp company-backends))
