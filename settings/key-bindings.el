;; Key bindings

;; Ivy
(global-set-key (kbd "C-x C-b") 'ivy-switch-buffer)
(global-set-key (kbd "C-s") 'swiper)

;; Evil
(define-key evil-normal-state-map "H" 'move-beginning-of-line)
(define-key evil-normal-state-map "L" 'move-end-of-line)

;; Neotree
(global-set-key (kbd "C-c t") 'neotree-toggle)
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "e") 'neotree-change-root)
(evil-define-key 'normal neotree-mode-map (kbd "u") 'neotree-select-up-node)

(provide 'key-bindings)
