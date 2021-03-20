(use-package lsp-ui
  :ensure t
  :after lsp
  :hook (lsp-mode . lsp-ui-mode)
  :custom (lsp-ui-doc-position 'bottom))
