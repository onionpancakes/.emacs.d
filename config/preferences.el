;; No startup message
(setq inhibit-startup-message t)

;; No scratch message
(setq initial-scratch-message nil)

;; No ring
(setq ring-bell-function 'ignore)

;; Show line numbers
(global-linum-mode t)

;; Show matching parens
(show-paren-mode 1)

;; Set default directory to user home
(setq default-directory "~/")

;; Backups
(setq backup-by-copying t     ; don't clobber symlinks
      kept-new-versions 10    ; keep 10 latest versions
      kept-old-versions 0     ; don't bother with old versions
      delete-old-versions t   ; don't ask about deleting old versions
      version-control t       ; number backups
      vc-make-backup-files t) ; backup version controlled files

;; No #autosave# files
(setq auto-save-default nil)

;; UTF-8
(prefer-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

;; Font
(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
(set-face-attribute 'default nil :height 110)

;; Disable ctrl-z

(global-unset-key (kbd "C-z"))
