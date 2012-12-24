(provide 'cc-setting)

;; (setq c-default-style "stroustrup"
;;       c-basic-offset 4)
(setq c-default-style
      (quote ((c-mode . "bsd")
	      (c++-mode . "stroustrup")
	      (java-mode . "java")
	      (awk-mode . "awk")))
      c-basic-offset 4)

