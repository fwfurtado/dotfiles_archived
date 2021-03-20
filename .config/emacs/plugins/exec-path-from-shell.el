(use-package exec-path-from-shell
  :ensure t
  :config
  (setq exec-path-from-shell-arguments '("-l")
	exec-path-from-shell-variables '("PATH"))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs '("JAVA_HOME" "LANG")))
