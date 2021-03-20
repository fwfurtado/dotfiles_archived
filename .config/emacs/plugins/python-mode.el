(use-package python-mode
  :ensure t
  :hook (python-mode . lsp-deferred)
  :config
  (require 'dap-python)
  (require 'dap-lldb))
