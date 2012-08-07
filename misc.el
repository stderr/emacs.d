;Get rid of scrollbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; current line highlight
(global-hl-line-mode 1)

;; Reuse dired buffer with 'a'
(put 'dired-find-alternate-file 'disabled nil)

;; use y and n instead of typing out yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; backup files in their own directory instead of wd
(setq make-backup-files t)
(setq version-control t)
(setq backup-directory-alist (quote ((".*" . "~/.emacs_backups/"))))

;; Set grep command to use - recursiveness for the win
(setq grep-command "grep -nHRi -e")

;; emacs likes to ask if you want to delete backup files once
;; you have enabled versioning. that is a total pain in the neck
(setq delete-old-versions t)

;; keep lots of versions
(setq kept-old-versions 10)
(setq kept-new-versions 25)

;; Line numbas
(global-linum-mode 1)
(setq linum-format "%4d ")

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

;; remember buffers between emacs sessions
(desktop-save-mode 1)

(provide 'misc)
