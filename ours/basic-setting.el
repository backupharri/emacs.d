(provide 'basic-setting)

(setq user-mail-address "harrifeng@gmail.com")
(setq user-full-name    "harrifeng")

;; use spaces only!
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(customize-set-variable 'scroll-bar-mode nil)

(tool-bar-mode -1)
(if (string-equal system-type "windows-nt")
    (menu-bar-mode -1)
  (menu-bar-mode t))

(setq ring-bell-function 'ignore)
(blink-cursor-mode -1)

(setq kill-ring-max 200)

(setq column-number-mode t)

;;When on one parentheses, move to the other one
(show-paren-mode t)
(setq show-paren-style 'parentheses)

(fset 'yes-or-no-p 'y-or-n-p)

;;Delete the CR and the end of the line when Ctrl + K at beginning of the line
(setq-default kill-whole-line t)

;;if kill content are the same, ignore them
(setq kill-do-not-dave-duplicates t)

;;Stop scroll-bar, it's very important to make emacs looks move more smoothly
(setq scroll-step 0
      scroll-margin 0
      scroll-conservatively 10000)

(setq comment-empty-lines t)

;;Maximum Windows
(run-with-idle-timer 1 nil 'w32-send-sys-command 61488)

;;Cmd is used for meta for MAC
(setq mac-option-key-is-meta nil
      mac-command-key-is-meta t
      mac-command-modifier 'meta
      mac-option-modifier 'none)

;; ;;UTF-8 Setting
;; (set-language-environment 'English)
;; (setq-default pathname-coding-system 'euc-cn)
;; (setq file-name-coding-system 'euc-cn)
;;

;; Encoding setting, it will show in the
;; "Priority Order for recognizing coding systems when reading files"
(prefer-coding-system 'cp950)
(prefer-coding-system 'gb2312)
(prefer-coding-system 'cp936)
(prefer-coding-system 'gb18030)
(prefer-coding-system 'utf-16)
(prefer-coding-system 'utf-8-unix)

;;auto expand
(setq hippie-expand-try-functions-list
      '(
	;senator-try-expand-semantic ; too slow
	try-expand-line ;whole line first
	try-expand-line-all-buffers
	try-expand-list
	try-expand-list-all-buffers
	try-expand-dabbrev
	try-expand-dabbrev-visible
	try-expand-dabbrev-all-buffers
	try-expand-dabbrev-from-kill
	try-complete-file-name
	try-complete-file-name-partially
	try-complete-lisp-symbol
	try-complete-lisp-symbol-partially
	try-expand-whole-kill
	)
      )

;;Custom setting saved file location
(setq abbrev-file-name
      (concat
       my-lisps-path
      ".abbrev_defs"))

(setq custom-file
      (concat
       my-lisps-path
      ".emacs_custom.el"))

;;auto compile elc file when saved
(add-hook 'after-save-hook
          (lambda ()
            (if (eq major-mode 'emacs-lisp-mode)
                (save-excursion (byte-compile-file buffer-file-name)))))

;;faster compile & accurate warning.
(setq byte-compile-verbose nil)
(setq font-lock-verbose t)


(add-to-list 'auto-mode-alist '("\\.mak\\'" . makefile-mode))

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)

;; different buffer name for name
;; (setq frame-title-format "%b @ %f")

(require 'uniquify)

(setq uniquify-buffer-name-style 'post-forward)
(setq uniquify-separator "|@|")

(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Completions*" "*Messages*"))


;; always new find windows on horizontally
(setq split-width-threshold nil)

;; it will also affect the grep-windows-height
(setq compilation-window-height 12)
(setq grep-window-height 12)

;; Emacs Speaks SMTP (gnu.org) using the default mail agent ;; If you use the default mail user agent.
(setq send-mail-function 'smtpmail-send-it)
;; Send mail using SMTP via gmail.
(setq smtpmail-smtp-server "smtp.gmail.com")
;; Send mail using SMTP on the mail submission port 587.
(setq smtpmail-smtp-service 587)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq nxml-child-indent 4)
