;; Readline aw yea
(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

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
