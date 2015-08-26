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
  "s" 'save-buffer)

;; Same frame speedbar
(require 'sr-speedbar)
(global-set-key (kbd "<f3>") 'sr-speedbar-toggle)

;; Set font
(custom-set-faces
 '(default ((t (:family "Source Code Pro Medium" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))

;; Set options
(custom-set-variables
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("5d1434865473463d79ee0523c1ae60ecb731ab8d134a2e6f25c17a2b497dd459" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(savehist-mode 1)

;; Use Helm for M-x
(global-set-key (kbd "M-x") 'helm-M-x)

;; Load Sublimity
(require 'sublimity)
(require 'sublimity-scroll)
;; (require 'sublimity-map)
;; (require 'sublimity-attractive)

;; Set color theme
(load-theme 'gruvbox t)

;; Disable audio bell
(setq visible-bell nil)

