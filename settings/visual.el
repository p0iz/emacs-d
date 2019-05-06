;; Settings that affect appearance
(defun apply-visual (&optional frame)
  "Applies visual appearance properties to frame"
  (progn
    ;; Highlights
    (global-hl-line-mode t)
    (show-paren-mode t)

    ;; Disable menu bar
    (menu-bar-mode -1)

    ;; Add line numbers
    (global-display-line-numbers-mode t)

    ;; No bells or whistles
    (setq visible-bell nil
	  ring-bell-function (lambda () ()))

    ;; In graphical mode load theme, disable bars and remember window size and open files
    (when (window-system frame)
      (load-theme 'blackboard)
      (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (desktop-save-mode)
      (set-fringe-style '(1 . 1)))))

;; Apply visuals to current and future frames
(when (daemonp)
  (add-hook 'after-make-frame-functions 'apply-visual))

(apply-visual)

(provide 'visual)
