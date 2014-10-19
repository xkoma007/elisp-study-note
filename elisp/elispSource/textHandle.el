
;; zap-to-char
(defun zap-to-char (arg char)
       "Kill up to and including ARG'th occurrence of CHAR.
     Case is ignored if `case-fold-search' is non-nil in the current buffer.
     Goes backward if ARG is negative; error if CHAR not found."
       (interactive "p\ncZap to char: ")
       (if (char-table-p translation-table-for-input)
           (setq char (or (aref translation-table-for-input char) char)))
       (kill-region (point) (progn
                              (search-forward (char-to-string char)
                                              nil nil arg)
                              (point))))


;; nth
(defun nth (n list)
       "Returns the Nth element of LIST.
     N counts from zero.  If LIST is not that long, nil is returned."
       (car (nthcdr n list)))
