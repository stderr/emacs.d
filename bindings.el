;; Change font sizes for code review on retarded TVs
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; goto line is M-x g
(global-set-key "\M-g" 'goto-line)

(global-set-key "\M-t" 'find-name-dired)

;;
(global-set-key "\C-c\C-c" 'comment-region)

(provide 'bindings)
