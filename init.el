(add-to-list 'load-path "~/.emacs.d/vendor/")

(require 'coffee)
(require 'color)
(require 'ruby)
(require 'yaml)
(require 'misc)
(require 'abbrev)
(require 'defuns)
(require 'modeline)
(require 'git)
(require 'bindings)

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