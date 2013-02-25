;;�رմ�����ʾ��
(setq visible-bell t)

;;��ʾ�к�
(setq column-number-mode t)

;;����fill-column��Ϊ60,���Ķ������Ѻ�
(setq default-fill-column 60)

;;����������ʾbuffer����
(setq frame-title-format "emacs@%b")

;;ƥ������ʱ��ʾ����һ�ߵ����ţ���������ת
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;ʶ�����ı��,������fillʱ�ھ�ź���������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;����ʹ�õݹ�minibuffer
(setq enable-recursive-minibuffers t)


;;��꿿�����ʱ��������Զ��ÿ�
(mouse-avoidance-mode 'animate)

;;����Emacsֱ�Ӵ򿪺���ʾͼƬ
(auto-image-file-mode)

;;�﷨����
(global-font-lock-mode t)

;;���ø�����Ϣ
(setq user-full-name "Yannis Xu")
(setq user-mail-address "excellentbright@gmail.com")

;;��ȱʡ����
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)

(provide 'init-base-config)
