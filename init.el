;; This is my emacs initialization script

;; Initialize package manager
(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/") package-archives)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
(package-initialize)

;; Set evil modes
(require 'evil)
(evil-mode 1)
(global-evil-jumper-mode)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "h" 'ff-find-other-file
  "t" 'helm-cmd-t
  "s" 'save-buffer
  "f n" 'make-frame
  "f d" 'delete-frame
  "f o" 'other-frame
  "m s" 'magit-status
  "m t" 'multi-term)

;; Same frame speedbar
(require 'sr-speedbar)
(global-set-key (kbd "<f3>") 'sr-speedbar-toggle)

;; Compile key
(global-set-key (kbd "<f7>") 'compile)

;; Set font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "adobe" :slant normal :weight semi-bold :height 98 :width normal)))))

;; Set options
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(ido-mode (quote both) nil (ido))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(semantic-sb-button-format-tag-function (quote semantic-format-tag-prototype))
 '(sr-speedbar-right-side t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(global-hl-line-mode t))
(savehist-mode 1)

;; Use Helm for M-x
(global-set-key (kbd "M-x") 'helm-M-x)

;; Add ggtags hook
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1))))

;; Set color theme
(load-theme 'oldlace t)

;; Disable audio bell
(setq visible-bell nil)

;; Never indent with tabs!
(setq indent-tabs-mode nil)
(put 'narrow-to-region 'disabled nil)

;; Do not make backup files
(setq make-backup-files nil)

;; Configure scrolling to be more fluid
(setq
 scroll-margin 10 ;; 10 lines margin from edges
 scroll-conservatively 100000) ;; Preserve a lot of lines to scroll only one line at a time

;; Configure multi-term
(require 'multi-term)
(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook
          (lambda ()
            (setq term-buffer-maximum-size 10000)
	    (setq show-trailing-whitespace nil)))
