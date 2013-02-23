(provide 'python-setting)

(add-to-list 'load-path (concat their-lisps-path "python/"))

;;--------python----------->
(require 'python)
(setq
 python-shell-interpreter "python.exe"
 python-shell-interpreter-args (concat "-i " (concat my-python-script-path
                                                     "ipython-script.py"))
; "-i C:\\Python26\\Scripts\\ipython-script.py"
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

