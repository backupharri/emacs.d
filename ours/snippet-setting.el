(provide 'snippet-setting)

(add-to-list 'load-path (concat their-lisps-path "yasnippet/"))

(require 'yasnippet)
(yas/initialize)
(yas/load-directory (concat their-lisps-path
			    "yasnippet/snippets/"))

;;Right configuration for snippet show without mouse control
(require 'dropdown-list)
(setq yas/prompt-functions
      '(yas/dropdown-prompt
        yas/ido-prompt
        yas/x-prompt
        yas/completing-prompt
        yas/no-prompt))
