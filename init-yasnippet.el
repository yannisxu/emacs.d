;;;;;;;;;;;;;;;;;;;;;;;;;;; -*- Mode: Emacs-Lisp -*- ;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename: init-yasnippet.el
;; Description: 
;; Author: Yannis Xu
;; Created: ���� ���� 28 10:48:50 2013 (+0800)
;; Version: 
;; Last-Updated: ���� ���� 28 15:42:23 2013 (+0800)
;;           By: Yannis Xu

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-yasnippet.el ends here

(require 'yasnippet)
;;(setq yas-snippet-dirs '("~/.emacs.d/elpa/"))
(require 'dropdown-list)
(setq yas/prompt-functions '(
			     yas/ido-prompt
			     yas/dropdown-prompt
			     yas/completing-prompt))
(setq yas/root-directory '(
			   "~/.emacs.d/snippets"                                ;;����Լ���snippets
			   "~/.emacs.d/elpa/yasnippet-20130218.2229/snippets"   ;;����Դ�
			   ))







 
