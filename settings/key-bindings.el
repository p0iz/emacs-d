;; Key bindings

;; Ivy
(global-set-key (kbd "C-x C-b") 'ivy-switch-buffer)
(global-set-key (kbd "C-s") 'swiper)

;; Neotree
(global-set-key (kbd "C-c t") 'neotree-toggle)

;; Frames
(global-set-key (kbd "C-c f o") 'other-frame)
(global-set-key (kbd "C-c f c") 'delete-frame)
(global-set-key (kbd "C-c f n") 'make-frame)

(provide 'key-bindings)
