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


(setq
      eshell-save-history-on-exit   t
      eshell-history-size           512
      eshell-hist-ignoredups        t
      eshell-cmpl-ignore-case       t
      eshell-cp-interactive-query   t
      eshell-ln-interactive-query   t
      eshell-mv-interactive-query   t
      eshell-rm-interactive-query   t
      eshell-mv-overwrite-files     nil
      ;; aliases-file 里面不能有多余的空行，否则会报正则表达式错误
      ;; eshell-aliases-file       (expand-file-name "_eshell/eshell-alias" init-dir)

      eshell-highlight-prompt   t
      ;; 提示符设置，下面两项必须对应起来，
      ;; 否则会报 read-only，并且不能补全什么的
      eshell-prompt-regexp      "^[^#$\n]* [#>]+ "
      eshell-prompt-function    (lambda nil
                                  (concat
                                   (abbreviate-file-name
                                    (eshell/pwd))
                                   (if
                                       (=
                                        (user-uid)
                                        0)
                                       " # " " >>> ")))
)

;; eshell time spent
(add-hook 'eshell-load-hook
          (lambda()(setq last-command-start-time (time-to-seconds))))
(add-hook 'eshell-pre-command-hook
          (lambda()(setq last-command-start-time (time-to-seconds))))
(add-hook 'eshell-before-prompt-hook
          (lambda()
              (message "spend %g seconds"
                       (- (time-to-seconds) last-command-start-time))))
