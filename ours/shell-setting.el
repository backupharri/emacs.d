(provide 'shell-setting)

;; run mulitiple shell 
(defun shell-mode-auto-rename-buffer (text)
  (if (eq major-mode 'shell-mode)
      (rename-buffer  (concat "*Shell: " (concat default-directory "*")) t)))
(add-hook 'comint-output-filter-functions 'shell-mode-auto-rename-buffer)

;; run mulitiple eshell 
(add-hook 'eshell-mode-hook
    (lambda ()
       (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))

(add-hook 'eshell-directory-change-hook
    (lambda ()
        (rename-buffer (concat "*EShell: " (concat default-directory "*")) t)))


;;clean all the buffer content 
(add-hook 'shell-mode-hook 'my-shell-mode-hook) 
(defun my-shell-mode-hook () 
  (local-set-key (kbd "C-x C-l") (lambda nil (interactive) (erase-buffer) (comint-send-input))) 
  )
