;; Settings that affect behavior

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Mac modifier handling
(setq mac-option-modifier nil
      mac-command-modifier 'meta)

;; Enable some global modes
(modern-c++-font-lock-global-mode t)
(savehist-mode t)
(setq desktop-load-locked-desktop nil)
(add-hook 'desktop-not-loaded-hook 'desktop-save-mode-off)

;; Set indent styles
(setq c-default-style
      (quote
       ((c-mode . "k&r")
	(c++-mode . "k&r")
	(java-mode . "java")
	(awk-mode . "awk")
	(other . "k&r"))))

;; Copy shell paths on Mac
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; Company
(add-hook 'after-init-hook 'global-company-mode)
(setq company-idle-delay 0
      company-show-numbers t
      company-tooltip-idle-delay 0
      company-quickhelp-delay 0)

;; Ivy
(require 'ivy-hydra)
(setq ivy-use-virtual-buffers t)
(setq ivy-extra-directories nil)
(ivy-mode t)

;; Omnisharp
(add-hook 'csharp-mode-hook 'omnisharp-mode)
(eval-after-load
 'company
 '(add-to-list 'company-backends 'company-omnisharp))
(add-hook 'csharp-mode-hook #'company-mode)

(provide 'behavior)
