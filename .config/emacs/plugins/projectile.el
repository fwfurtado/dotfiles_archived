(use-package projectile
  :ensure t
  :init (projectile-mode +1)
  :config (progn
	    (setq projectile-switch-project-action 'neotree-projectile-action))
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))
