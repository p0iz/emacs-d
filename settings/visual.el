;; Settings that affect appearance
(global-hl-line-mode t)
(show-paren-mode t)

;; Disable bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Remember window size and open files
(desktop-save-mode t)

(load-theme 'blackboard)

;; No bells or whistles
(setq visible-bell nil)

(provide 'visual)
