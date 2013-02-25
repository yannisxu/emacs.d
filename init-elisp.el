(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

;;==============================    auto-header    =============================
;;����auto-header.el,�Զ�����ļ�ͷ
(require 'auto-header)

;;�����ļ�ͷ������
(setq header-full-name "Yannis.Xu")

;;��������
(setq header-email-address "excellentbright@gmail.com")


;; ����ÿ�α���ʱҪ���µ���Ŀ
(setq header-update-on-save
    '(  filename
        modified
        counter
        copyright))
;; �����ļ�ͷ����ʾ��ʽ
(setq header-field-list
'(  filename  ;�ļ���
    ;;blank     ;���У���ͬ
    copyright  ;;��Ȩ
    version
    author    ;����
    created   ;������
    ;;blank
    description   ;����
    ;;blank
    modified_by ;������
    ;; blank
    status  ;״̬���Ƿ񷢲�
    ;;����
    ;;blank
  ))
;;=============================   END auto-header     ==========================

(provide 'init-elisp)
