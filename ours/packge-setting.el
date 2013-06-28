(provide 'package-setting)

;;packages server:marmalade
(require 'package)
(add-to-list 'package-archives
             '("marmalade" .
               "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Simple Plugins that are installed in package Marmalade are list here
(require 'htmlize)
(require 'browse-kill-ring)

;; bat-mode setting
(setq auto-mode-alist 
      (append 
       (list (cons "\\.[bB][aA][tT]$" 'bat-mode))
       ;; For DOS init files
       (list (cons "CONFIG\\."   'bat-mode))
       (list (cons "AUTOEXEC\\." 'bat-mode))
       auto-mode-alist))

(autoload 'bat-mode "bat-mode"
  "DOS and WIndows BAT files" t)

;; session setting
(require 'session)
(add-hook 'after-init-hook
          'session-initialize)
;; org-mode & session.el conflict
(add-to-list 'session-globals-exclude
             'org-mark-ring)

(require 'bm)

(setq bm-highlight-style 'bm-highlight-only-line)

(global-set-key (kbd "<C-return>") 'bm-toggle)
(global-set-key (kbd "<f12>") 'bm-next)
(global-set-key (kbd "<C-f12>") 'bm-previous)
