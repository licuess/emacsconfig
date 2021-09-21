;;; init-start.el --- settings for basic config
;;; Commentary:
;;; Code:

;;设置系统编码
(prefer-coding-system 'utf-8)

(set-default-coding-systems 'utf-8)

(set-terminal-coding-system 'utf-8)

(set-keyboard-coding-system 'utf-8)

(setq default-buffer-file-coding-system 'utf-8)

;;设置垃圾回收的阈值
(setq gc-cons-threshold most-positive-fixnum)

(setq inhibit-startup-srceen t)

;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
(tool-bar-mode -1)

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

;; 更改显示字体大小 20pt
(set-face-attribute 'default nil :height 200)

;;改变光标样式
(setq-default cursor-type 'bar)

;; macOS删除文件的时候删除到垃圾桶
(when *is-mac* (setq delete-by-moving-to-trash t))


(display-time-mode 1)
(column-number-mode 1)
(show-paren-mode nil)
(display-battery-mode 1)
(global-auto-revert-mode t)


;; file operation
(setq tab-width 4
      inhibit-splash-screen t
      initial-scratch-message nil
      sentence-end-double-space nil
      make-backup-files nil
      indent-tabs-mode nil
      make-backup-files nil
      auto-save-default nil)
(setq create-lockfiles nil)


;; history
(savehist-mode 1)
(setq savehist-file "~/.emacs.d/.savehist")
(setq history-length t)
(setq history-delete-duplicates t)
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))

(provide 'init-start)

;;; init-start.el ends here
