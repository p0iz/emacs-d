;; Emacs configuration
;;
;; This file contains only customize, server startup and package setup code.
;; Anything else is split into separate files contained in 'settings' dir.

(package-initialize)

;; Load server if not running
;;(require 'server)
;;(condition-case err
;;    (unless (server-running-p)
;;      (server-start))
;;  (error (message "Error: %s" err)))

;; Customize
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#272822" "#f92672" "#a6e22e" "#f4bf75" "#66d9ef" "#ae81ff" "#66d9ef" "#f8f8f2"])
 '(ansi-term-color-vector
   [unspecified "#272822" "#f92672" "#a6e22e" "#f4bf75" "#66d9ef" "#ae81ff" "#66d9ef" "#f8f8f2"] t)
 '(auto-save-default nil)
 '(custom-safe-themes
   (quote
    ("d5b121d69e48e0f2a84c8e4580f0ba230423391a78fcb4001ccb35d02494d79e" default)))
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
    (ivy-hydra golden-ratio blackboard-theme color-identifiers-mode modern-cpp-font-lock counsel-projectile neotree base16-theme rjsx-mode projectile counsel try multiple-cursors csharp-mode magit)))
 '(projectile-tags-command "ctags --fields=+r -Re -f \"%s\" %s")
 '(projectile-use-git-grep t)
 '(safe-local-variable-values (quote ((projectile-indexing-method quote alien)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Fira Code Retina")))))

;; Install selected oackages on new installations
(unless package-archive-contents
  (progn (package-refresh-contents)
	 (package-install-selected-packages)))

;; Separate settings into modules
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)

(require 'visual)
(require 'behavior)
(require 'key-bindings)
