;;关闭错误提示音
(setq visible-bell t)

;;显示行号
(setq column-number-mode t)

;;设置fill-column设为60,让阅读更加友好
(setq default-fill-column 60)

;;标题栏中显示buffer名字
(setq frame-title-format "emacs@%b")

;;匹配括号时显示另外一边的括号，而不是跳转
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;识别中文标点,不用在fill时在句号后插入两个空格
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;允许使用递归minibuffer
(setq enable-recursive-minibuffers t)


;;光标靠近鼠标时，让鼠标自动让开
(mouse-avoidance-mode 'animate)

;;允许Emacs直接打开和显示图片
(auto-image-file-mode)

;;语法加亮
(global-font-lock-mode t)

;;设置个人信息
(setq user-full-name "Yannis Xu")
(setq user-mail-address "excellentbright@gmail.com")

;;打开缺省功能
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

(provide 'init-base-config)
