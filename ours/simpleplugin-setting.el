(provide 'simpleplugin-setting)

(add-to-list 'load-path (concat their-lisps-path "simpleplugin/"))

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
