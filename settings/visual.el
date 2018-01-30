;; Settings that affect appearance
(global-hl-line-mode t)
(show-paren-mode t)

;; Setup window size for graphical interface
(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
	    '(
	      (tool-bar-lines . 0)
	      (width . 140)
	      (height . 50)
	      ;;
	      ))

      (setq default-frame-alist
	    '(
	      (tool-bar-lines . 0)
	      (width . 140)
	      (height . 50)
	      ;;
	      )))
  (progn
    (setq initial-frame-alist
	  '(
	    (tool-bar-lines . 0)))

    (setq initial-frame-alist
	  '(
	    (tool-bar-lines . 0)))))

(load-theme 'blackboard)

;; No bells or whistles
(setq visible-bell nil)

(provide 'visual)
