(provide 'simpleplugin-setting)

(add-to-list 'load-path (concat their-lisps-path "simpleplugin/"))

(require 'htmlize)
(require 'browse-kill-ring)
(require 'fold-dwim)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
;;;; use fold-dwim to fold xml file        ;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
(add-hook 'nxml-mode-hook 'my-fold-dwim-hook) 
(defun my-fold-dwin-hook () 
   (fold-dwim-turn-on-hs-and-hide) 
   ) 
  
(defun my-xhtml-extras () 
   (make-local-variable 'outline-regexp) 
   (setq outline-regexp "\\s *<\\([h][1-6]\\|html\\|body\\|head\\)\\b") 
   (make-local-variable 'outline-level) 
   (setq outline-level 'my-xhtml-outline-level) 
   (outline-minor-mode 1) 
   (hs-minor-mode 1)) 
(defun my-xhtml-outline-level () 
   (save-excursion (re-search-forward html-outline-level)) 
   (let ((tag (buffer-substring (match-beginning 1) (match-end 1)))) 
     (if (eq (length tag) 2) 
         (- (aref tag 1) ?0) 
       0))) 
(add-to-list 'hs-special-modes-alist 
              '(nxml-mode 
                "<!--\\|<[^/>]>\\|<[^/][^>]*[^/]>" 
                "" 
                "<!--" ;; won't work on its own; uses syntax table 
                (lambda (arg) (my-nxml-forward-element)) 
                nil)) 
(defun my-nxml-forward-element () 
   (let ((nxml-sexp-element-flag)) 
     (setq nxml-sexp-element-flag (not (looking-at "<!--"))) 
     (unless (looking-at outline-regexp) 
       (condition-case nil 
           (nxml-forward-balanced-item 1) 
         (error nil))))) 

