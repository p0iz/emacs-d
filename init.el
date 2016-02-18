;; This is my emacs initialization script

;; Start Emacs server
(server-start)

;; Initialize package manager
(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
(package-initialize)

;; Set evil modes
(require 'evil-leader)
(global-evil-leader-mode)
(require 'evil)
(evil-mode 1)
(global-evil-jumper-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "h" '(lambda ()
	 (interactive)
	 (ff-find-other-file nil t))
  "t" 'helm-cmd-t
  "s" 'save-buffer
  "f n" 'make-frame
  "f d" 'delete-frame
  "f o" 'other-frame
  "f f" 'focus-mode
  "m s" 'magit-status)

;; Same frame speedbar
(require 'sr-speedbar)
(global-set-key (kbd "<f3>") 'sr-speedbar-toggle)

;; Set font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fantasque Sans Mono" :foundry "outline" :slant normal :weight normal :height 120 :width normal)))))

;; Set options
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("5d1434865473463d79ee0523c1ae60ecb731ab8d134a2e6f25c17a2b497dd459" default)))
 '(global-hl-line-mode t)
 '(ido-mode (quote both) nil (ido))
 '(menu-bar-mode nil)
 '(paradox-github-token t)
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(semantic-sb-button-format-tag-function (quote semantic-format-tag-prototype))
 '(sr-speedbar-right-side t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))
(savehist-mode 1)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Add ggtags hook
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1)
	      (auto-complete-mode))))

;; Set color theme (handle emacsclients when running as daemon)
(set 'theme 'gruvbox)
(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (select-frame frame)
            (load-theme theme t)))
    (load-theme theme t))

;; Disable audio bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; Never indent with tabs!
(setq indent-tabs-mode nil)

;; Do not make backup files
(setq make-backup-files nil)

;; Configure scrolling to be more fluid
(setq
 scroll-margin 10 ;; 10 lines margin from edges
 scroll-conservatively 100000) ;; Preserve a lot of lines to scroll only one line at a time
