(add-to-list 'load-path "~/.emacs.d/vendor/")

(require 'defuns)
(require 'coffee)
(require 'color)
(require 'rvm)
(require 'ruby)
(require 'yaml)
(require 'lua)
(require 'abbrev)
(require 'modeline)
(require 'git)
(require 'shellsetup) ;; avoid collision by naming it "shell"
(require 'misc)
(require 'bindings)
(require 'my-javascript)
(require 'haml)
(require 'wrap-region)
(require 'feature-mode)
(require 'php-mode)
(require 'aes)

(require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;; wrap-region
(wrap-region-global-mode t)

;; expand-region
;; (require 'expand-region)
;; (global-set-key (kbd "C-S-SPC ") 'expand-region)

;; I Do magic.
(require 'ido)

(ido-mode t)
(setq
 ido-use-filename-at-point nil   ; don't use filename at point (annoying)
 ido-use-url-at-point nil        ; don't use url at point (annoying)
 ido-enable-flex-matching t)     ; yay!

;; do ido menus vertically in the minibuffer instead of horizontally

(setq ido-decorations (quote ("\n-> " "" "\n   " "\n   ..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]")))
(defun ido-disable-line-trucation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-trucation)

(provide 'init)
