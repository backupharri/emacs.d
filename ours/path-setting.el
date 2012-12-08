(provide 'path-setting)

;;For Macos build the emacs by
;; > brew install emacs --cocoa --srge

(when (string-equal system-type (or "darwin" "gnu/linux"))
  (setenv "PATH"
	  (concat
	   "/bin"           ":"
	   "/sbin"          ":"
	   "/usr"           ":"
	   "/usr/bin"       ":"
	   "/usr/local/bin" ":"
	   "/usr/sbin"      ":"
	   (getenv "PATH")
	   ))
  )

;; This exec-path setting will work for all the platforms
;; after the PATH is set.
(setq exec-path (split-string (getenv "PATH") path-separator))
