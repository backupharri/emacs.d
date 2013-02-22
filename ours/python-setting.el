(provide 'python-setting)

(add-to-list 'load-path (concat their-lisps-path "python/"))

;;--------python----------->
(require 'python)
(setq
 python-indent-offset 4
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
 "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
 "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
 "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")

(if (string-equal system-type "windows-nt")
    (setq
     python-shell-interpreter "C:\\Python26\\python.exe"
     python-shell-interpreter-args
     "-i C:\\Python26\\Scripts\\ipython-script.py")
  (setq
   python-shell-interpreter "/usr/local/share/python/ipython"
   python-shell-interpreter-args ""))
