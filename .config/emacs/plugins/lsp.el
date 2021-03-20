(defun fwf/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (setq lsp-lens-enable t)
  (lsp-enable-which-key-integration)
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :ensure t
  :init  (setq lsp-keymap-prefix "C-c l")
  :hook (lsp-mode . fwf/lsp-mode-setup)
  :config (define-key lsp-mode-map (kbd "C-c l") lsp-command-map)
  :commands (lsp lsp-deferred))
