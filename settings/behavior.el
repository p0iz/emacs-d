;; Settings that affect behavior

;; Evil
(evil-mode)

;; Neotree
(require 'neotree)

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable some global modes
(global-color-identifiers-mode t)
(modern-c++-font-lock-global-mode t)

(provide 'behavior)
