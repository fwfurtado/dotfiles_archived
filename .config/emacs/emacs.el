(require 'package)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")))

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("57e3f215bef8784157991c4957965aa31bac935aca011b29d7d8e113a652b693" default))
 '(package-selected-packages
   '(yaml-mode ob-mermaid org-superstar esh-autosuggest exec-path-from-shell flutter hover company-lsp yasnippet lsp-dart neotree poetry company-box company python-mode dap-mode general lsp-ivy ivy-rich lsp-treemacs lsp-mode lsp-ui hydra python xclip which-key vterm smartparens rainbow-delimiters paredit org org-bullets multiple-cursors move-text markdown-mode magit indent-guide helpful flycheck ewal emojify doom-modeline counsel-projectile counsel cider clojure-mode all-the-icons aggressive-indent ace-window afternoon-theme use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Decision alias 
(defalias 'yes-or-no-p 'y-or-n-p)

;; Add all env vars
(dolist (envvar (split-string (shell-command-to-string "env") "\n"))
  (add-to-list 'process-environment envvar))

;; Add ASDF shims to exec-path
(add-to-list 'exec-path "~/.asdf/shims")

;; build java_home and add to process-environment
(defun parent-dir (path n)
  (let* ((full-path-list (cdr (split-string path "/")))
	 (parent-path-list (butlast full-path-list 2))
	 (rel-parent-path (string-join parent-path-list "/"))
	 (full-parent-path (concat "/" rel-parent-path "/")))
    full-parent-path))

(add-to-list 'process-environment (concat "JAVA_HOME=" (parent-dir (shell-command-to-string "asdf which java") 2)))

;; Load plugins
(load "~/.config/emacs/configs.el")
(load "~/.config/emacs/functions.el")

;; Enable clipboard application share
(setq select-enable-clipboard t)

;; Hooks
(if (daemonp)
    (add-hook 'after-make-frame-functions (lambda (frame)
					    (with-selected-frame frame
					      (customizations/apply-configurations))))
    (customizations/apply-configurations))

(customizations/load-plugins "~/.config/emacs/plugins")
