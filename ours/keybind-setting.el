(provide 'keybind-setting)

(global-set-key (kbd "C-c C-u")      'cua-mode)
(global-set-key (kbd "C-c C-m")      'execute-extended-command)
(global-set-key (kbd "C-x C-m")      'execute-extended-command)
(global-set-key (kbd "C-x C-k")      'kill-region)
(global-set-key (kbd "C-x C-r")      'recentf-open-files)
(global-set-key (kbd "C-x C-y")      'kill-ring-save)
(global-set-key (kbd "C-x C-u")      'backward-kill-line)
(global-set-key (kbd "C-w")          'backward-kill-word)
(global-set-key (kbd "C-o")          'other-window)
(global-set-key (kbd "C-h")          'backward-delete-char-untabify)
(global-set-key (kbd "C-,")          'set-mark-command) 
(global-set-key (kbd "<f4>")         'loop-alpha)
(global-set-key (kbd "<f5>")         'ns-toggle-fullscreen)
(global-set-key (kbd "<C-return>")   'delete-other-windows)
(global-set-key (kbd "<C-f11>")      'toggle-tool-bar-mode-from-frame)
(global-set-key [(meta ?/)]          'hippie-expand)
