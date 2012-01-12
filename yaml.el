(setq load-path (cons "~/.emacs.d/vendor/" load-path))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(provide 'yaml)
