(provide 'plugin-setting)

;;--------tramp-------------------->>
(require 'tramp)
;; tramp setting password keep time
(setq password-cache-expiry 6000)

(if (string-equal system-type "windows-nt")
    (setq tramp-default-method "plink")
  (setq tramp-default-method "ssh"))

;;use sudo on remote host
(set-default 'tramp-default-proxies-alist (quote ((nil "\\`root\\'" "/hfeng@%h:"))))

;;--------recentf------------------>>
(recentf-mode 1)
 (setq recentf-max-menu-items 30)

;;--------ibuffer------------------>>
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("shell"  (or
			  (mode . shell-mode)
			  (mode . eshell-mode)))
               ("python" (or
			  (name . "^\\*Py")
			  (mode . python-mode)))
               ("ruby"   (mode . ruby-mode))
               ("html"   (mode . html-mode))
	       ("cc-c"   (or
			  (mode . c-mode)
			  (mode . c++-mode)))
               ("java"   (mode . java-mode))
               ("org"    (mode . org-mode))
	       ("emacs"  (or
			  (mode . emacs-lisp-mode)
			  (name . "^\\.emacs$")
			  (name . "^\\*scratch\\*$")))
               ("dired"  (mode . dired-mode))
               ("xml"    (mode . nxml-mode))))))   

(setq ibuffer-show-empty-filter-groups nil)

(add-hook 'ibuffer-mode-hook 
	  (lambda ()
	    (ibuffer-switch-to-saved-filter-groups "default")))

;;--------org-mode------------------>>
;; I don't want to use org-mode's auto type subscript.
;; only setting this is not enough, you also
;; have to set '#+OPTIONS:^:{}' at the beginning
;; of the org file, With this setting, 'a_b' will
;; not be interpreted as a subscript, but 'a_{b}' will.
(setq org-export-with-sub-superscripts nil)

;; When you have made some personal keyboard shortcuts in
;; emacs using global-set-key, both major modes and minor
;; modes will override those if it uses the same keys.
;; This is because major mode and minor mode's keymaps
;; have priority over global keymaps.
(add-hook 'org-mode-hook
	  (lambda()
	    (define-key org-mode-map (kbd "C-,") 'set-mark-command)
	    ))

(defun yas/org-very-safe-expand ()
  (let ((yas/fallback-behavior 'return-nil)) (yas/expand)))

(add-hook 'org-mode-hook
	  (lambda ()
	    (make-variable-buffer-local 'yas/trigger-key)
	    (setq yas/trigger-key [tab])
	    (add-to-list 'org-tab-first-hook 'yas/org-very-safe-expand)
	    (define-key yas/keymap [tab] 'yas/next-field)))

;;--------info-mode------------------>>
(defun info-mode ()
  (interactive)
  (let ((file-name (buffer-file-name)))
    (kill-buffer (current-buffer))
    (info file-name)))
(add-to-list 'auto-mode-alist '("\\.info\\'" . info-mode))

(require 'info-look)

(info-lookup-add-help
 :mode 'python-mode
 :regexp "[[:alnum:]_]+"
 :doc-spec '(("(python)Index" nil "")))
