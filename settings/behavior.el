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

;; Company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0
      company-show-numbers t
      company-tooltip-idle-delay 0
      company-quickhelp-delay 0)

;; Omnisharp
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))

(provide 'behavior)
