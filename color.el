(add-to-list 'load-path "~/.emacs.d/vendor/themes/solarized")
(require 'color-theme)
(require 'color-theme-solarized)

(color-theme-initialize)
(color-theme-solarized-light)
(provide 'color)
