(use-package paredit
  :commands paredit-mode
  :ensure t
  :init
  (add-hook 'emacs-lisp-mode-hook 'paredit-mode))

(use-package rainbow-delimiters
  :commands rainbow-delimiters-mode
  :ensure t
  :init
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode))
