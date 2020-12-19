(use-package smartparens
  :ensure t
  :init (progn
	  (bind-key "M-(" #'sp-backward-slurp-sexp)
	  (bind-key "M-)" #'sp-forward-slurp-sexp)
	  (bind-key "M-[" #'sp-backward-barf-sexp)
	  (bind-key "M-]" #'sp-forward-barf-sexp))
  :config (progn
	    (smartparens-global-mode t)
	    (show-smartparens-global-mode t)))
