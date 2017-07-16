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
    
    ;; om.next
    (defui [:defn [:defn]])

    ;; om.dom html
    (a :defn)
    (abbr :defn)
    (address :defn)
    (area :defn)
    (article :defn)
    (aside :defn)
    (audio :defn)
    (b :defn)
    (base :defn)
    (bdi :defn)
    (bdo :defn)
    (big :defn)
    (blockquote :defn)
    (body :defn)
    (br :defn)
    (button :defn)
    (canvas :defn)
    (caption :defn)
    (cite :defn)
    (code :defn)
    (col :defn)
    (colgroup :defn)
    (data :defn)
    (datalist :defn)
    (dd :defn)
    (del :defn)
    (details :defn)
    (dfn :defn)
    (dialog :defn)
    (div :defn)
    (dl :defn)
    (dt :defn)
    (em :defn)
    (embed :defn)
    (fieldset :defn)
    (figcaption :defn)
    (figure :defn)
    (footer :defn)
    (form :defn)
    (h1 :defn)
    (h2 :defn)
    (h3 :defn)
    (h4 :defn)
    (h5 :defn)
    (h6 :defn)
    (head :defn)
    (header :defn)
    (hr :defn)
    (html :defn)
    (i :defn)
    (iframe :defn)
    (img :defn)
    (ins :defn)
    (kbd :defn)
    (keygen :defn)
    (label :defn)
    (legend :defn)
    (li :defn)
    (link :defn)
    (main :defn)
    (map :defn)
    (mark :defn)
    (menu :defn)
    (menuitem :defn)
    (meta :defn)
    (meter :defn)
    (nav :defn)
    (noscript :defn)
    (object :defn)
    (ol :defn)
    (optgroup :defn)
    (output :defn)
    (p :defn)
    (param :defn)
    (picture :defn)
    (pre :defn)
    (progress :defn)
    (q :defn)
    (rp :defn)
    (rt :defn)
    (ruby :defn)
    (s :defn)
    (samp :defn)
    (script :defn)
    (section :defn)
    (small :defn)
    (source :defn)
    (span :defn)
    (strong :defn)
    (style :defn)
    (sub :defn)
    (summary :defn)
    (sup :defn)
    (table :defn)
    (tbody :defn)
    (td :defn)
    (tfoot :defn)
    (th :defn)
    (thead :defn)
    (time :defn)
    (title :defn)
    (tr :defn)
    (track :defn)
    (u :defn)
    (ul :defn)
    (var :defn)
    (video :defn)
    (wbr :defn)
    ;; om.dom svg
    (circle :defn)
    (clipPath :defn)
    (ellipse :defn)
    (g :defn)
    (line :defn)
    (mask :defn)
    (path :defn)
    (pattern :defn)
    (polyline :defn)
    (rect :defn)
    (svg :defn)
    (text :defn)
    (defs :defn)
    (linearGradient :defn)
    (polygon :defn)
    (radialGradient :defn)
    (stop :defn)
    (tspan :defn))
  
  (use-package cider
    :commands cider-mode
    :ensure t
    :init
    (add-hook 'clojure-mode-hook 'cider-mode)
    :config
    (add-hook 'cider-repl-mode-hook 'paredit-mode)
    (add-hook 'cider-repl-mode-hook 'rainbow-delimiters-mode)))
