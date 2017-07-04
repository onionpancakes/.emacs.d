;; use-package

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-verbose t)

;; Custom file

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; Backup directory

(defconst backup-dir
  (concat user-emacs-directory "backups"))

(setq backup-directory-alist
      `(("." . ,backup-dir)))

;; Load configuration files

(defconst config-dir
  (concat user-emacs-directory "config"))

(defun load-config-file (filename)
  (load-file (expand-file-name filename config-dir)))

(load-config-file "preferences.el")
(load-config-file "theme.el")
(load-config-file "emacs-lisp.el")
(load-config-file "clojure.el")

;; End of init
