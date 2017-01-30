
(package-initialize)

(server-start)

;; Separate settings into modules
(setq settings-dir
      (expand-file-name "settings" user-emacs-directory))
(add-to-list 'load-path settings-dir)
(require 'visual)
(require 'key-bindings)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(package-selected-packages (quote (multiple-cursors csharp-mode magit)))
 '(savehist-mode t)
 '(tool-bar-mode nil))
 ;; Make sure we use the right executable in Windows
 (if (eq system-type 'windows-nt) '(inferior-octave-program  "octave-cli"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Allow y/n answers
(fset 'yes-or-no-p 'y-or-n-p)
