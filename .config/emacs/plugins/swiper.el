(use-package swiper
  :ensure t
  :config (progn
	    (ivy-mode 1)
	    (setq ivy-use-virtual-buffer t)
	    (setq enable-recursive-minibuffers t)
	    (global-set-key "\C-s" 'swiper)))
