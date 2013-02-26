;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Emacs-Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename: init-header2.el
;; Description: 
;; Author: Yannis Xu
;; Created: 周二 二月 26 15:56:15 2013 (+0800)
;; Version: 
;; Last-Updated: 周二 二月 26 16:05:01 2013 (+0800)
;;           By: Yannis Xu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path "~/.emacs.d/elisp/header2")

;;==============================    auto-header    =============================
;;加载header2.el,自动添加文件头
(require 'header2)

;;保存时更新文件头
(add-hook 'write-file-hooks 'auto-update-file-header)  

(setq make-header-hook '(
			 header-mode-line
			 ;;header-title
			 ;;header-blank
			 header-file-name
			 header-description
			 ;;header-status
			 header-author
			 ;; header-maintainer
			 header-copyright
			 header-creation-date
			 ;;header-rcs-id
			 header-version
			 ;;header-sccs
			 header-modification-date
			 header-modification-author
			 ;; header-update-count
			 ;; header-url
			 ;; header-doc-url
			 ;; header-keywords
			 ;; header-compatibility
			 ;; header-blank
			 ;; header-lib-requires
			 ;; header-end-line
			 ;; header-commentary
			 ;; header-blank
			 ;; header-blank
			 ;; header-blank
			 ;; header-end-line
			 ;; header-history
			 ;; header-blank
			 ;; header-blank
			 ;; header-rcs-log
			 ;;header-end-line
			 ;; header-free-software
			 ;;header-code	
			 header-eof
			 )
      )

;;在加载以下模式的时候自动添加头文件
(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
(add-hook 'c-mode-common-hook 'auto-make-header)  
(add-hook 'python-mode-hook 'auto-make-header)

;;=============================   END auto-header     ==========================

(provide 'init-header2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-header2.el ends here
