(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Load configuration files

(defconst config-dir
  (concat user-emacs-directory "config"))

(defun load-config-file (filename)
  (load-file (expand-file-name filename config-dir)))

(load-config-file "preferences.el")
(load-config-file "paredit.el")
(load-config-file "clojure-mode.el")

;; End of init

