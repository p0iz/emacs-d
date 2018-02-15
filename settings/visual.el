;; Settings that affect appearance

;; Highlights
(global-hl-line-mode t)
(show-paren-mode t)

;; In graphical mode load theme, disable bars and remember window size and open files
(unless 'display-graphic-p nil
	(load-theme 'blackboard)
	(scroll-bar-mode -1)
	(tool-bar-mode -1)
	(desktop-save-mode t))

;; Disable menu bar
(menu-bar-mode -1)

;; No bells or whistles
(setq visible-bell nil)

(provide 'visual)
