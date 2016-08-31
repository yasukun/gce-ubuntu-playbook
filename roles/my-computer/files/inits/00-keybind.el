(prefer-coding-system 'utf-8)
(setq coding-system-for-read 'utf-8)
(setq coding-system-for-write 'utf-8)

(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

(global-set-key "\C-h" 'delete-backward-char)

(defun split-window-vertically-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-vertically)
    (progn
      (split-window-vertically
       (- (window-height) (/ (window-height) num_wins)))
      (split-window-vertically-n (- num_wins 1)))))
(defun split-window-horizontally-n (num_wins)
  (interactive "p")
  (if (= num_wins 2)
      (split-window-horizontally)
    (progn
      (split-window-horizontally
       (- (window-width) (/ (window-width) num_wins)))
      (split-window-horizontally-n (- num_wins 1)))))

(defun other-window-or-split ()
  (interactive)
  (when (one-window-p)
    (if (>= (window-body-width) 270)
        (split-window-horizontally-n 3)
      (split-window-horizontally)))
  (other-window 1))

(global-unset-key "\C-t")
(global-unset-key "\C-z")
(global-set-key (kbd "C-t") 'other-window-or-split)
(global-set-key (kbd "C-z") 'transpose-chars)

(defun my-move-beginning-of-line ()
  (interactive)
  (if (bolp)
      (back-to-indentation)
    (beginning-of-line)))
(global-set-key "\C-a" 'my-move-beginning-of-line)

(setq default-directory "~/") 
