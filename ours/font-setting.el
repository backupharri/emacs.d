(provide 'font-setting)

(defconst my-font-size (cond
			((string-match system-name "hfeng.local")
			 ":pixelsize=14")
			((string-match system-name "hfeng-desktop")
			 ":pixelsize=20")
			((string-match system-name "hfeng-pc")
			 ":pixelsize=20")
			((string-match system-name "sh-rd-hfeng")
			 ":pixelsize=14")
			(":pixelsize=16")))

(qiang-set-font
 '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") my-font-size
 '("楷体" "kai" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" ))

