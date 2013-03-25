(provide 'font-setting)

(defconst my-font-size (cond
			((string-match system-name "hfengs-MacBook-Air.local")
			 ":pixelsize=14")
			((string-match system-name "sh-linux-hfeng")
			 ":pixelsize=18")
			((string-match system-name "hfeng-pc")
			 ":pixelsize=20")
			((string-match system-name "sh-rd-hfeng")
			 ":pixelsize=14")
			(":pixelsize=14")))

(qiang-set-font
 '("Monaco" "Consolas" "Courier New" "DejaVu Sans Mono" "Monospace" "Courier") my-font-size
 '("楷体" "kai" "Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" ))

