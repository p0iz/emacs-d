;; Helper to verify package installation
(defun package-ensure (package)
  "Make sure the given package is installed"
  (if (package-installed-p package)
      nil
    (message "Package %s was not installed. Installing..." package)
    (package-install package)
    package))

;; Initialize package manager
(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
;; Refresh archive if it does not exist
(or (file-exists-p package-user-dir)
    (package-refresh-contents))
(package-initialize)

;; List all packages to be installed by default
(defvar package-list
  (list 'ac-helm
        'ag
        'auto-complete
        'cmake-font-lock
        'cmake-ide
        'cmake-mode
        'cmake-project
        'column-marker
        'context-coloring
        'cyberpunk-theme
        'dark-krystal-theme
        'dash
        'dtrt-indent
        'ecb
        'evil
        'evil-leader
        'focus
        'ggtags
        'glsl-mode
        'gotham-theme
        'grandshell-theme
        'gruvbox-theme
        'helm
        'helm-ag
        'helm-cmd-t
        'helm-cscope
        'helm-dash
        'helm-gtags
        'helm-mt
        'helm-themes
        'hydra
        'jazz-theme
        'js2-mode
        'levenshtein
        'lua-mode
        'lush-theme
        'magit
        'molokai-theme
        'multi-term
        'multiple-cursors
        'oldlace-theme
        'p4
        'paradox
        'pdf-tools
        'purple-haze-theme
        'rainbow-delimiters
        'smart-cursor-color
        'solarized-theme
        'spacegray-theme
        'spinner
        'sr-speedbar
        'subatomic-theme
        'tablist
        'tao-theme
        'ubuntu-theme
        'undo-tree
        'warm-night-theme
        'xcscope
        'zenburn-theme))

;; Ensure all listed packages are installed
(mapcar 'package-ensure package-list)
