(defun customizations/apply-configurations ()
  
  ;; Enable mouse 
  (xterm-mouse-mode 1)

  ;; Enable line number 
  (global-display-line-numbers-mode 1)

  ;; Enable column number 
  (column-number-mode 1)

  ;; Disbale line number for modes
  (dolist (mode '(org-mode-hook
		  term-mode-hook
		  shell-mode-hook
		  treemacs-mode-hook
		  vterm-mode-hook
		  eshell-mode-hook))
    (add-hook mode (lambda () (display-line-numbers-mode 0))))
  
  ;; Disable all bars
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (set-fringe-mode 10)

  ;; Enable Cua Mode
  (cua-mode 1)

  ;; Enable Interactive do things mode
  (ido-mode 1)

  ;; Set font 
  (set-frame-font "Jetbrains Mono 12" nil t)

  ;; Disable auto save and backup 
  (setq-default auto-save-default nil)
  (setq-default make-backup-files nil)

  ;; Enable Mouse
  (xterm-mouse-mode 1)

  ;; Set transparency
  (set-frame-parameter (selected-frame) 'alpha '(85 85))
  (add-to-list 'default-frame-alist '(alpha 85 85))

  ;; Set default init buffer
  (setq-default inhibit-startup-message t)
  ;; (setq-default initial-buffer-choice 'eshNell)

  ;; Empty buffer
  (global-set-key (kbd "C-c n") #'fwf/new-frame-buffer )

  ;; Fix backspaces
  (normal-erase-is-backspace-mode 1)

  
  ;; Set transparency for terminal mode
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

