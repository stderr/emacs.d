(defun sudo-edit (&optional arg)
  "Edit file buffer with sudo"
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:stderr@localhost" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:stderr@localhost" buffer-file-name))))

(defun add-file-find-hook-with-pattern (pattern fn &optional contents)
  "Add a find-file-hook that calls FN for files where PATTERN
matches the file name, and optionally, where CONTENT matches file contents.
Both PATTERN and CONTENTS are matched as regular expressions."
  (lexical-let ((re-pattern pattern)
                (fun fn)
                (re-content contents))
    (add-hook 'find-file-hook
              (lambda ()
                (if (and
                     (string-match re-pattern (buffer-file-name))
                     (or (null re-content)
                         (string-match re-content
                                       (buffer-substring (point-min) (point-max)))))
                    (apply fun ()))))))

(defun kill-region-or-backward-word ()
  "If region is selected, use default C-w, otherwise delete backward word"
  (interactive)
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (backward-kill-word 1)))

(defun vi-open-line-above ()
  "Insert a newline above the current line and put point at beginning."
  (interactive)
  (unless (bolp)
    (beginning-of-line))
  (newline)
  (forward-line -1)
  (indent-according-to-mode))

(defun vi-open-line-below ()
  "Insert a newline below the current line and put point at beginning."
  (interactive)
  (unless (eolp)
    (end-of-line))
  (newline-and-indent))

;; Full screen
(defun toggle-fullscreen (&optional f)
  "Toggle full screen in most Emacs builds."
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
                         (if (equal 'fullboth current-value)
                             (if (boundp 'old-fullscreen) old-fullscreen nil)
                           (progn (setq old-fullscreen current-value)
                                  'fullboth)))))

;; fuck everything that requires this
(defun dos2unix ()
  "Convert a buffer from dos ^M end of lines to unix end of lines."
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\r" nil t) (replace-match "")))

;;  put stupid line endings back in. This function should not even exist.
(defun unix2dos ()
  "Opposite of dos2unix."
  (interactive)
  (goto-char (point-min))
  (while (search-forward "\n" nil t) (replace-match "\r\n")))

;; Use "%" to jump to the matching parenthesis.
;; source: http://www.crsr.net/Notes/Emacs.html

(defun goto-match-paren (arg)
  "Go to the matching parenthesis if on parenthesis, otherwise insert the character typed."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t                    (self-insert-command (or arg 1))) ))
(global-set-key "%" `goto-match-paren)

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))


(provide 'defuns)