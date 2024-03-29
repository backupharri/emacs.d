(defconst my-emacs-path "~/.emacs.d/")

(defconst my-lisps-path  (concat my-emacs-path "ours/") "Path for self lisps")
(add-to-list 'load-path my-lisps-path) 

(require 'basic-setting)
(require 'keybind-setting)
(require 'helpfunc-setting)
(require 'plugin-setting)
(require 'path-setting)
(require 'font-setting)
(require 'shell-setting)
(require 'modeline-setting)
