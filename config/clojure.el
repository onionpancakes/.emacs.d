(use-package clojure-mode
  :ensure t
  :config
  (setq clojure-ident-style :always-indent)
  
  (use-package cider
    :commands cider-mode
    :ensure t
    :init
    (add-hook 'clojure-mode-hook 'cider-mode)
    :config
    (add-hook 'cider-repl-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)))

(use-package paredit
  :commands paredit-mode
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'paredit-mode))

(use-package rainbow-delimiters
  :commands rainbow-delimiters-mode
  :ensure t
  :init
  (add-hook 'clojure-mode-hook 'rainbow-delimiters-mode))
