(defun fwf/org-hook ()
  (org-indent-mode)
  (auto-fill-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1))

(use-package org
  :ensure t
  :hook (org-mode . fwf/org-hook)
  :config (progn
	    (setq org-ellipsis  " ▾")
	    (setq org-hide-leading-stars t)
	    (setq org-support-shift-select t)
	    (setq org-babel-clojure-backend 'cider)
	    (setq org-confirm-babel-evaluate nil)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (clojure . t)
   (python . t)))

(require 'org-tempo)
(add-to-list 'org-structure-template-alist '("sh" . "src shell"))
(add-to-list 'org-structure-template-alist '("el" . "src emacs-lisp"))
(add-to-list 'org-structure-template-alist '("py" . "src python"))
(add-to-list 'org-structure-template-alist '("cl" . "src clojure"))
