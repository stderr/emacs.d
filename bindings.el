;; Readline aw yea
(global-set-key (kbd "C-w") 'kill-region-or-backward-word)

;; Shell -  a suspend-frame binding is useless for me
(global-set-key (kbd "C-z") 'shell)

;; Buffer cycling
(global-set-key (kbd "<C-tab>") 'bury-buffer)

;; Hippie expand binding
(global-set-key "\M- " 'hippie-expand)

;; Sudo editing
(global-set-key (kbd "M-s e") 'sudo-edit)

;; Dired jump
(global-set-key (kbd "C-x C-j") 'dired-jump)

;; vim style o / O commands
;; (global-set-key "\C-c\C-O" 'vi-open-line-above)
;; (global-set-key "\C-c\C-o" 'vi-open-line-below)
;; Meh, use occur instead
(global-set-key "\C-c\C-o" 'occur)

;; Change font sizes for code review on retarded TVs
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; goto line is M-x g
(global-set-key "\M-g" 'goto-line)

(global-set-key "\M-t" 'find-name-dired)

;; Comment / Uncomment 
(global-set-key "\C-c\C-c" 'comment-region)
(global-set-key "\C-c\C-u" 'uncomment-region)

(provide 'bindings)
