;; Key bindings

;; Ido dired
(global-set-key (kbd "C-x f") 'ido-find-file)
(global-set-key (kbd "C-x C-f") 'ido-find-file)

;; Ivy
(global-set-key (kbd "C-x b") 'counsel-ibuffer)
(global-set-key (kbd "C-x C-b") 'counsel-ibuffer)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c C-r") 'counsel-rg)

;; Enable ibuffer buffer list
(global-set-key (kbd "C-x B") 'ibuffer)

;; Window switching
(global-set-key (kbd "<C-tab>") 'other-window)

;; Frames
(global-set-key (kbd "C-c f o") 'other-frame)
(global-set-key (kbd "C-c f c") 'delete-frame)
(global-set-key (kbd "C-c f n") 'make-frame)

;; Undo
(global-set-key (kbd "C-z") 'undo)

;; Scroll wheel zoom
(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

;; Multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)

(provide 'key-bindings)
