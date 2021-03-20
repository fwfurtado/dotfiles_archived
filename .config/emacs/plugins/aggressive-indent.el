(use-package aggressive-indent
  :ensure t
  :config
  (global-aggressive-indent-mode 1)
  (add-to-list 'aggressive-indent-dont-indent-if
	       '(derived-mode-p 'clojure-mode)))
