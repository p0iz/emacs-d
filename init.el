
(package-initialize)

(server-start)

;; Separate settings into modules
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(require 'visual)
(require 'behavior)
(require 'key-bindings)

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

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
 '(global-auto-revert-mode t)
 '(inferior-octave-program "octave-cli")
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(ivy-use-virtual-buffers t)
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages
   (quote
    (evil base16-theme rjsx-mode projectile counsel try multiple-cursors csharp-mode magit)))
 '(projectile-tags-command "ctags --fields=+r -Re -f \"%s\" %s")
 '(projectile-use-git-grep t)
 '(savehist-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Install selected oackages on new installations
(unless package-archive-contents
  (progn (package-refresh-packages)
	 (package-install-selected-packages)))

