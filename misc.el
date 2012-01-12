;; current line highlight
(global-hl-line-mode 1)
(set-face-background 'hl-line "#330")

;; I have to type "yes" or "no"? Fuck you.
(defalias 'yes-or-no-p 'y-or-n-p)

;; backup files in their own directory instead of wd
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; emacs likes to ask if you want to delete backup files once
;; you have enabled versioning. that is a total pain in the neck
(setq delete-old-versions t)

;; keep lots of versions
(setq kept-old-versions 10)
(setq kept-new-versions 25)

;; Line numbas
(line-number-mode 1)
(column-number-mode 1)

;; Modeline

;; C-k at beginning of line takes the whole line (no need to c-k twice)
(setq kill-whole-line t)

;; automatic next line after left curly braces, right curly braces,
;; and semi colons - positive for on, negative for off
(setq c-auto-newline 1)

;; emacs newlines and indents when enter key
(global-set-key "\C-m" 'newline-and-indent)

;; spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Just move one instead of an entire screen when scrolling to next page
(setq scroll-step 1)

;; Y'know, like blood
(set-face-background 'region "dark red")

;; remember buffers between emacs sessions
(desktop-save-mode 1)

(provide 'misc)
