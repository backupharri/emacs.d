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

(when (string-equal system-type "windows-nt")

  (if (file-exists-p "c:/dropbox")
      (defconst my-dropbox-path "c:/Dropbox/Development/")
    (defconst my-dropbox-path "d:/Dropbox/Development/"))
  
  (defconst my-tools-path
    (concat
     my-dropbox-path
     "Tools/"))

  (defconst my-java-path
    (concat
     my-dropbox-path
     "PortableJava/bin/"))

  (defconst my-mingw-path
    (concat
     my-dropbox-path
     "PortableMingw/bin/"))  
  
  (defconst my-git-path
    (concat
     my-dropbox-path
     "PortableGit/bin/"))

  (defconst my-python-path
    (concat
     my-dropbox-path
     "PortablePython/App/"))
  
  (defconst my-python-script-path
    (concat
     my-python-path
     "Scripts"))
  
  (setenv "PATH"
	  (concat
	   my-tools-path ";"
	   my-java-path ";"
	   my-mingw-path ";"
	   my-git-path ";"
	   my-python-path ";"
	   my-python-script-path ";"
	   (getenv "PATH")
	   ))
  )

;; This exec-path setting will work for all the platforms
;; after the PATH is set.
(setq exec-path (split-string (getenv "PATH") path-separator))
