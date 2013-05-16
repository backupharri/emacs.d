(provide 'keybind-setting)

(global-set-key (kbd "C-c C-u")      'cua-mode)
(global-set-key (kbd "C-c C-m")      'execute-extended-command)
(global-set-key (kbd "C-x C-m")      'execute-extended-command)
(global-set-key (kbd "C-x C-k")      'kill-region)
(global-set-key (kbd "C-x C-r")      'recentf-open-files)
(global-set-key (kbd "C-x C-y")      'kill-ring-save)
(global-set-key (kbd "C-x C-u")      'backward-kill-line)
(global-set-key (kbd "C-w")          'backward-kill-word)
(global-set-key (kbd "C-o")          'other-window)
(global-set-key (kbd "C-h")          'backward-delete-char-untabify)
(global-set-key (kbd "C-,")          'set-mark-command) 
(global-set-key (kbd "<f4>")         'loop-alpha)
(global-set-key (kbd "<f5>")         'revert-buffer)
(global-set-key (kbd "<C-return>")   'delete-other-windows)
(global-set-key (kbd "<C-f11>")      'toggle-tool-bar-mode-from-frame)
(global-set-key [(meta ?/)]          'hippie-expand)

;;mac only
(global-set-key (kbd "<f8>")         'ns-toggle-fullscreen)
;;toggle line number
(global-set-key (kbd "<f9>")         'linum-mode)


; Outline-minor-mode key map
(define-prefix-command 'cm-map nil "Outline-")
; HIDE
(define-key cm-map "a" 'hide-sublevels)    ; Hide everything but the top-level headings
(define-key cm-map "e" 'show-all)          ; Show (expand) everything
(define-key cm-map "h" 'hide-subtree)      ; Hide everything in this entry and sub-entries
(define-key cm-map "s" 'show-subtree)      ; Show (expand) everything in this heading & below

(define-key cm-map "l" 'hide-leaves)       ; Hide body lines in this entry and sub-entries
(define-key cm-map "i" 'show-children)     ; Show this heading's immediate child sub-headings

;; (define-key cm-map "t" 'hide-body)         ; Hide everything but headings (all body lines)
;; (define-key cm-map "o" 'hide-other)        ; Hide other branches
;; (define-key cm-map "c" 'hide-entry)        ; Hide this entry's body
;; ; SHOW
;; (define-key cm-map "e" 'show-entry)        ; Show this heading's body
;; (define-key cm-map "k" 'show-branches)     ; Show all sub-headings under this heading
; MOVE
(define-key cm-map "u" 'outline-up-heading)                ; Up
(define-key cm-map "n" 'outline-next-visible-heading)      ; Next
(define-key cm-map "p" 'outline-previous-visible-heading)  ; Previous
(define-key cm-map "f" 'outline-forward-same-level)        ; Forward - same level
(define-key cm-map "b" 'outline-backward-same-level)       ; Backward - same level
;; (global-set-key "\M-o" cm-map)

(add-hook 'outline-minor-mode-hook
              (lambda () (local-set-key "\C-x\C-x"
                                        cm-map)))
