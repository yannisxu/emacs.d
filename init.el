;;Load_path
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(defconst *spell-check-support-enabled* nil)
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-carbon-emacs* (eq window-system 'mac))
(defconst *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

;;��Ӱ�װԴ  
;;M-x eval-buffer to evaluate it, and then do M-x package-refresh-contents to load in the package listing.
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;;��������
(require 'init-base-config)

;;���С����,all by myself
;;(require 'init-elisp)
(require 'auto-header)

;;��Ӳ��
(require 'init-site-lisp)

;;�󶨿�ݼ�
(require 'init-keybind)

;;elpa��װ��
(require 'init-elpa)

;;�Զ���ȫ
(require 'init-auto-complete)

