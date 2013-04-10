;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Emacs-Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename: init.el
;; Description: 
;; Author: Yannis Xu
;; Created: �ܶ� ���� 26 16:03:26 2013 (+0800)
;; Version: 
;; Last-Updated: ���� ���� 10 12:07:15 2013 (+0800)
;;           By: Yannis Xu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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

;;��������
(require 'init-themes)

;;��������
(require 'init-fonts)

;;���ͷ�ļ�
(require 'init-header2)

;;���emacs��������
(require 'init-encode)

;;���elpa�޷���װ�Ĳ��
(require 'init-site-lisp)

;;�󶨿�ݼ�
(require 'init-keybind)

;;elpa��װ��
(require 'init-elpa)

;;�Զ���ȫ
(require 'init-auto-complete)

;;emacs code broswer
(require 'init-ecb)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default)))
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
