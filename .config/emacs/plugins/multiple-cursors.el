(use-package multiple-cursors
  :ensure t
  :config (progn
	    (global-set-key (kbd "M-S-<down>") 'mc/edit-lines)
	    (global-set-key (kbd "C-S-<up>") 'mc/mark-previous-like-this)
	    (global-set-key (kbd "C-S-<down>") 'mc/mark-next-like-this)
	    (global-set-key (kbd "M-S-<left>") 'mc/mark-all-like-this)))
