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

(use-package clojure-mode
  :ensure t
  :config
  ;; (setq clojure-indent-style :always-indent)

  (define-clojure-indent
    ;; clojure.core
    (as-> :defn)

    ;; clojure.spec
    (fdef :defn)

    ;; test.check
    (for-all :defn))
  
  (use-package cider
    :commands cider-mode
    :ensure t
    :init
    (add-hook 'clojure-mode-hook 'cider-mode)
    :config
    (add-hook 'cider-repl-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)))
