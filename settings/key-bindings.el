;; Key bindings

;; Ivy
(global-set-key (kbd "C-x C-b") 'ivy-switch-buffer)

;; Evil
(define-key evil-normal-state-map "H" 'move-beginning-of-line)
(define-key evil-normal-state-map "L" 'move-end-of-line)

(provide 'key-bindings)
