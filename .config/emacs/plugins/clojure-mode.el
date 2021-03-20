(use-package clojure-mode
  :ensure t
  :hook ((clojure-mode . lsp-deferred)
	 (clojurescript-mode . lsp-deferred)
	 (clojurec-mode . lsp-deferred)
	 (clojure-mode . subword-mode))
  :config (setq lsp-enable-completion-at-point nil))
