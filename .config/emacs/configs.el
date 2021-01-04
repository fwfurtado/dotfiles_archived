(defun customizations/apply-configurations ()
  
  ;; Enable mouse 
  (xterm-mouse-mode 1)

  ;; Enable line number 
  (global-display-line-numbers-mode 1)

  ;; Disable all bars
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)

  ;; Enable Cua Mode
  (cua-mode 1)

  ;; Enable Interactive do things mode
  (ido-mode 1)

  ;; Set font 
  (set-frame-font "Jetbrains Mono 14" nil t)

  ;; Enable afternoon theme
  (load-theme 'afternoon t)

  ;; Disable auto save and backup 
  (setq-default auto-save-default nil)
  (setq-default make-backup-files nil)

  ;; Enable Mouse
  (xterm-mouse-mode 1)

  ;; Set transparency
  (set-frame-parameter (selected-frame) 'alpha '(85 85))
  (add-to-list 'default-frame-alist '(alpha 85 85))

  ;; Set transparency for terminal mode
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

