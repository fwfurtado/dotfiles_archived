(use-package projectile
  :ensure t
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap ("C-c p" . projectile-command-map)
  :init (setq projectile-project-search-path (parse-colon-path (getenv "PROJECT_DIR")))
  :config (projectile-mode))
