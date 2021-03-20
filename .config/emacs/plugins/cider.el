(use-package cider
  :ensure t
  :hook ((cider-repl-mode . company-mode)
	 (cider-mode . company-mode)))
