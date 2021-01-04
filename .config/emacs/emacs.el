(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(elpy windsize use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load plugins
(load "~/.config/emacs/configs.el")
(load "~/.config/emacs/functions.el")


;;Add ASDF shims to exec-path
(add-to-list 'exec-path "~/.asdf/shims") 

;; Enable clipboard application share
(setq select-enable-clipboard t)

;; Hooks
(if (daemonp)
    (add-hook 'after-make-frame-functions (lambda (frame)
					    (with-selected-frame frame
					      (customizations/apply-configurations))))
    (customizations/apply-configurations))

(customizations/load-plugins "~/.config/emacs/plugins")
