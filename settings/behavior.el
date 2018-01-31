;; Settings that affect behavior

;; Neotree
(require 'neotree)

;; Ivy
(require 'ivy-hydra)
(ivy-mode t)
(setq ivy-use-virtual-buffers t)

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable some global modes
(global-color-identifiers-mode t)
(modern-c++-font-lock-global-mode t)
(golden-ratio-mode t)
(savehist-mode t)

(provide 'behavior)
