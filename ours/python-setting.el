(provide 'python-setting)

(add-to-list 'load-path (concat their-lisps-path "python-mode/"))
(add-to-list 'load-path (concat their-lisps-path "python-pep8/"))

;; The setting sequence is strict, you have to set the
;; python mode first, then set the pep8.

;;--------python mode----------->
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))

;;--------python pep8----------->
(require 'python-pep8)

;;--------pythonlookup----------->
;; load pylookup when compile time
(eval-when-compile (require 'pylookup))

(defconst pylookup-dir
  (concat
   their-lisps-path
   "pylookup"))

;; set executable file and db file
(if (string-equal system-type "windows-nt")
    (setq pylookup-program (concat pylookup-dir "/pylookup.bat"))
  (setq pylookup-program (concat pylookup-dir "/pylookup.py")))

(setq pylookup-db-file (concat pylookup-dir "/pylookup.db"))

;; set search option if you want
;; (setq pylookup-search-options '("--insensitive" "0" "--desc" "0"))
