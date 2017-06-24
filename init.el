(setq inhibit-startup-message t) ; disable startup screen
(setq initial-scratch-message nil)

(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files
(setq create-lockfiles nil)  ; stop creating lock files

(setq ring-bell-function 'ignore)
(setq tab-width 4)
(global-linum-mode t) ; show line numbers
(show-paren-mode 1)   ; show matching parens

; (add-to-list 'default-frame-alist '(font . "Source Code Pro")) ; Global font

; (setq default-directory "C:/Users/glin/")

;; ------------------
;; Add Melpa packages
;; ------------------

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defvar my-packages '(clojure-mode
                      cider
                      paredit
                      color-theme-sanityinc-tomorrow))

(defun install-my-packages ()
  (interactive)
  (package-refresh-contents)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (message "Installing %s" p)
      (package-install p)))
  (message "Installed my packages."))

;; To set theme: (color-theme-sanityinc-tomorrow-night)

;; --------------
;; Hooks
;; --------------

(defun clojure-mode-indents ()
  (put-clojure-indent 'fdef 1))

(add-hook 'clojure-mode-hook 'cider-mode)
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'clojure-mode-indents)

;; -----------------
;; END OF MY CONFIGS
;; -----------------

