;; This is my emacs initialization script

;; I don't need a welcome when I am already home
(setq inhibit-startup-message t)

;; Start Emacs server
(server-start)

;; Initialize package manager
(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
(package-initialize)

;; Set evil modes
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-leader "<SPC>")
(evil-leader/set-key
  "h" '(lambda ()
	 (interactive)
	 (ff-find-other-file nil t))
  "t" 'helm-cmd-t
  "b" 'helm-buffers-list
  "s" 'save-buffer
  "f c" 'make-frame
  "f d" 'delete-frame
  "f o" 'other-frame
  "f f" 'focus-mode
  "m s" 'magit-status)
(require 'evil)
(evil-mode)

;; Some shortcuts adapted from QtCreator
(global-set-key (kbd "<f2>") 'ggtags-find-definition)
(global-set-key (kbd "<f3>") 'ggtags-find-reference)

;; Jump to start/end of line in Evil normal state
(define-key evil-normal-state-map "H" 'beginning-of-line)
(define-key evil-normal-state-map "L" 'end-of-line)
(define-key evil-visual-state-map "H" 'beginning-of-line)
(define-key evil-visual-state-map "L" 'end-of-line)

;; Set font
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fantasque Sans Mono" :foundry "outline" :slant normal :weight normal :height 120 :width normal))))
 '(ecb-default-highlight-face ((t (:background "dark magenta")))))

;; Set color theme (handle emacsclients when running as daemon)
(set 'theme 'spacegray)
(if (daemonp)
    (add-hook 'after-make-frame-functions
        (lambda (frame)
            (select-frame frame)
            (load-theme theme t)))
    (load-theme theme t))

;; Disable audio bell
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

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
 '(ecb-create-layout-file "~/.emacs.d/ecb-user-layouts.el")
 '(ecb-key-map
   (quote
    ("C-c ."
     (t "fh" ecb-history-filter)
     (t "fs" ecb-sources-filter)
     (t "fm" ecb-methods-filter)
     (t "fr" ecb-methods-filter-regexp)
     (t "ft" ecb-methods-filter-tagclass)
     (t "fc" ecb-methods-filter-current-type)
     (t "fp" ecb-methods-filter-protection)
     (t "fn" ecb-methods-filter-nofilter)
     (t "fl" ecb-methods-filter-delete-last)
     (t "ff" ecb-methods-filter-function)
     (t "p" ecb-nav-goto-previous)
     (t "n" ecb-nav-goto-next)
     (t "lc" ecb-change-layout)
     (t "lr" ecb-redraw-layout)
     (t "lw" ecb-toggle-ecb-windows)
     (t "lt" ecb-toggle-layout)
     (t "s" ecb-window-sync)
     (t "r" ecb-rebuild-methods-buffer)
     (t "a" ecb-toggle-auto-expand-tag-tree)
     (t "x" ecb-expand-methods-nodes)
     (t "h" ecb-show-help)
     (t "gl" ecb-goto-window-edit-last)
     (t "g1" ecb-goto-window-edit1)
     (t "g2" ecb-goto-window-edit2)
     (t "gc" ecb-goto-window-compilation)
     (t "gd" ecb-goto-window-directories)
     (t "gs" ecb-goto-window-sources)
     (t "gm" ecb-goto-window-methods)
     (t "gh" ecb-goto-window-history)
     (t "ga" ecb-goto-window-analyse)
     (t "gb" ecb-goto-window-speedbar)
     (t "md" ecb-maximize-window-directories)
     (t "ms" ecb-maximize-window-sources)
     (t "mm" ecb-maximize-window-methods)
     (t "mh" ecb-maximize-window-history)
     (t "ma" ecb-maximize-window-analyse)
     (t "mb" ecb-maximize-window-speedbar)
     (t "e" eshell)
     (t "o" ecb-toggle-scroll-other-window-scrolls-compile)
     (t "\\" ecb-toggle-compile-window)
     (t "/" ecb-toggle-compile-window-height)
     (t "," ecb-cycle-maximized-ecb-buffers)
     (t "." ecb-cycle-through-compilation-buffers)
     (nil "<mouse-1>" ecb-methods-menu-show-block))))
 '(ecb-layout-name "right-methods")
 '(ecb-minor-mode-text "")
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-windows-width 0.18)
 '(global-hl-line-mode t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(menu-bar-mode nil)
 '(paradox-github-token t)
 '(scroll-bar-mode nil)
 '(semantic-mode t)
 '(semantic-sb-button-format-tag-function (quote semantic-format-tag-prototype))
 '(sr-speedbar-right-side t)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))
(savehist-mode 1)

;; Configure scrolling to be more fluid
(setq
 scroll-margin 20 ;; 20 lines margin from edges
 scroll-conservatively 100000) ;; Preserve a lot of lines to scroll only one line at a time

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Use home row keys to navigate Helm menu
(with-eval-after-load 'helm
    (progn
      (define-key helm-map (kbd "M-j") 'helm-next-line)
      (define-key helm-map (kbd "M-k") 'helm-previous-line)))

;; Add cc-mode hooks
(require 'column-marker)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
	      (ggtags-mode 1)
	      (auto-complete-mode))
            (column-marker-1 100)))

;; Do not make backup files
(setq make-backup-files nil)

(put 'narrow-to-region 'disabled nil)
