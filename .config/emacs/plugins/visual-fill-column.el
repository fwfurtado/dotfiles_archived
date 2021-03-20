(defun fwf/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
	visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :disabled t
  :hook (org-mode . fwf/org-mode-visual-fill))
