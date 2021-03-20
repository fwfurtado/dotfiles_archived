(use-package hydra
  :ensure t)

(defhydra hydra-text-scale (global-map "C-f")
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out"))
