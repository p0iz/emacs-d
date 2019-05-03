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
(setq desktop-load-locked-desktop nil)
(add-hook 'desktop-not-loaded-hook 'desktop-save-mode-off)
(pixel-scroll-mode t)

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
(add-hook 'csharp-mode-hook #'company-mode)

;; Ensure that Omnisharp server process is assassinated
(defadvice save-buffers-kill-emacs (before omnisharp-auto-stop)
  (when (get-process "OmniServer")
    (set-process-query-on-exit-flag (get-process "OmniServer") nil)))
(ad-activate 'save-buffers-kill-emacs)

;; Zeal docset mappings
(require 'zeal-at-point)
(add-to-list 'zeal-at-point-mode-alist '(csharp-mode . ("mono" "net" "unity3d")))

(provide 'behavior)
