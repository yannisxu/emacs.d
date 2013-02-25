;;Load_path
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(defconst *spell-check-support-enabled* nil)
(defconst *is-a-mac* (eq system-type 'darwin))
(defconst *is-carbon-emacs* (eq window-system 'mac))
(defconst *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))

;;添加安装源  
;;M-x eval-buffer to evaluate it, and then do M-x package-refresh-contents to load in the package listing.
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;;基本配置
(require 'init-base-config)

;;添加小功能,all by myself
;;(require 'init-elisp)
(require 'auto-header)

;;添加插件
(require 'init-site-lisp)

;;绑定快捷键
(require 'init-keybind)

;;elpa安装包
(require 'init-elpa)

;;自动补全
(require 'init-auto-complete)

