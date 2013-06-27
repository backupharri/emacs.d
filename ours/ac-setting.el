(provide 'ac-setting)

(add-to-list 'load-path (concat their-lisps-path "ac/"))
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (concat their-lisps-path "ac/ac-dict"))
(ac-config-default)
