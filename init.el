;; Emacs configuration
;;
;; This file contains only GC tricks and customize.
;; Anything else is split into separate files contained in 'settings' dir.

;; Garbage collection tricks
(setq gc-cons-threshold 1000000000)
(add-hook 'focus-out-hook 'garbage-collect)

(package-initialize)

;; Customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(custom-safe-themes
   (quote
    ("60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "43b219a31db8fddfdc8fdbfdbd97e3d64c09c1c9fdd5dff83f3ffc2ddb8f0ba0" default)))
 '(global-auto-revert-mode t)
 '(inferior-octave-program "octave-cli")
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (cargo flycheck-rust racer rust-mode omnisharp company-lua company-quickhelp company ivy-hydra blackboard-theme modern-cpp-font-lock counsel-projectile base16-theme rjsx-mode projectile counsel try typescript-mode multiple-cursors csharp-mode magit)))
 '(projectile-use-git-grep t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 160 :family "Fira Code Retina"))))
 '(company-preview ((t (:background "midnight blue" :foreground "snow"))))
 '(company-preview-common ((t (:inherit company-preview :foreground "slate gray"))))
 '(company-preview-search ((t (:inherit company-preview :background "midnight blue"))))
 '(company-scrollbar-bg ((t (:background "dark slate blue"))))
 '(company-scrollbar-fg ((t (:background "slate blue"))))
 '(company-tooltip ((t (:background "midnight blue" :foreground "snow"))))
 '(company-tooltip-common ((t (:foreground "gray"))))
 '(company-tooltip-selection ((t (:background "light slate blue")))))

;; Separate settings into modules
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'visual)
(require 'behavior)
(require 'key-bindings)
