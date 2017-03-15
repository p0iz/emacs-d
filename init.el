;; Emacs configuration
;;
;; This file contains only customize, server startup and package setup code.
;; Anything else is split into separate files contained in 'settings' dir.

(package-initialize)

(server-start)

;; Customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(auto-save-default nil)
 '(custom-enabled-themes (quote (base16-monokai)))
 '(custom-safe-themes
   (quote
    ("c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" default)))
 '(global-auto-revert-mode t)
 '(inferior-octave-program "octave-cli")
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(neo-show-hidden-files t)
 '(neo-window-fixed-size nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (counsel-projectile neotree evil base16-theme rjsx-mode projectile counsel try multiple-cursors csharp-mode magit)))
 '(projectile-tags-command "ctags --fields=+r -Re -f \"%s\" %s")
 '(projectile-use-git-grep t)
 '(savehist-mode t)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fantasque Sans Mono")))))

;; Install selected oackages on new installations
(unless package-archive-contents
  (progn (package-refresh-packages)
	 (package-install-selected-packages)))

;; Separate settings into modules
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(require 'visual)
(require 'behavior)
(require 'key-bindings)
