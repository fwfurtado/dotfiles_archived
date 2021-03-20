(use-package helpful
  :ensure t
  :custom
  (counsel-describe-function #'helpful-callable)
  (counsel-describe-variable #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))
