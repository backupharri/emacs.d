(defconst my-emacs-path "~/.emacs.d/")

(defconst my-lisps-path  (concat my-emacs-path "ours/") "Path for self lisps")
(defconst their-lisps-path  (concat my-emacs-path "theirs/") "Path for self lisps")
(add-to-list 'load-path my-lisps-path) 

(require 'basic-setting)
(require 'keybind-setting)
(require 'helpfunc-setting)
(require 'plugin-setting)
(require 'path-setting)
(require 'font-setting)
(require 'shell-setting)
(require 'modeline-setting)

(require 'colortheme-setting)
(require 'python-setting)
(require 'snippet-setting)
(require 'simpleplugin-setting)
(require 'cc-setting)
(require 'ac-setting)



