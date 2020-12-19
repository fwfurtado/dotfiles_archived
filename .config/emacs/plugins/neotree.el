(use-package neotree
  :ensure t
  :config (progn
	    ; set correct theme
	    (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
	    ; find the current opened file
	    (setq neo-smart-open t))
  :bind (("C-\\" . neotree-toggle)))
