;; Settings that affect behavior

;; Neotree
(require 'neotree)
(setq neo-show-hidden-files t)
(setq neo-window-fixed-size nil)

;; Ivy
(require 'ivy-hydra)
(setq ivy-use-virtual-buffers t)

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Enable some global modes
(global-color-identifiers-mode t)
(modern-c++-font-lock-global-mode t)
(ivy-mode t)
(golden-ratio-mode t)
(savehist-mode t)

;; Set indent styles
(setq c-default-style
      (quote
       ((c-mode . "k&r")
	(c++-mode . "k&r")
	(java-mode . "java")
	(awk-mode . "awk")
	(other . "k&r"))))

(provide 'behavior)
