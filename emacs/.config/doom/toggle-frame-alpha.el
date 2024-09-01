;;; toggle-frame-alpha

(defun toggle-frame-alpha ()
  (interactive)
  (let* ((pair (or (frame-parameter nil 'alpha) '(100 100)))
         (alpha (apply '+ pair)))
    (set-frame-parameter nil
                         'alpha
                         (if (or (null alpha) (eq alpha 200) (eq alpha 2.0))
                             '(85 60) '(100 100)))))
(global-set-key (kbd "C-M-0") 'toggle-frame-alpha)
