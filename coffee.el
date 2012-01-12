(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")

(require 'coffee-mode)

(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2)

  ;; key bindings for in-Emacs compiling
  (define-key coffee-mode-map [(meta R)] 'coffee-compile-region)
  (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer))

(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))

(provide 'coffee)
