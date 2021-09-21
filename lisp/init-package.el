;;; init-package.el --- settings for install package
;;; commentary:
;;; code:

;; 查看包运行的时间
(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate)
  )

(use-package crux
  :bind (("C-S-k" . crux-smart-kill-line)
	 ("C-S-d" . crux-duplicate-current-line-or-region)
	 ("C-a"   . crux-move-beginning-of-line)
	 ("C-c ^" . crux-top-join-line)
	 ("C-x ," . crux-find-user-init-file)))

(use-package hungry-delete
  :bind(("C-c DEL" . hungry-delete-backward))
  :bind(("C-c d"   . hungry-delete-forward)))

(use-package drag-stuff
  :bind (("<C-S-up>"   . drag-stuff-up))
  :bind (("<C-S-down>" . drag-stuff-down)))

;; Settings for company
(use-package company
  :diminish
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :init (add-hook 'after-init-hook 'global-company-mode)
  :config (setq company-minimum-prefix-length 1
                company-selection-wrap-around t))

;; Settings for which-key - suggest next key
(use-package which-key
  :defer nil
  :diminish
  :init (which-key-mode)
        (which-key-setup-side-window-bottom))

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-alist nil
	ivy-count-format "%d/%d "
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t . ivy--regex-ignore-order))))

(use-package counsel
  :after (ivy)
  :bind (("M-x"     . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-c f"   . counsel-recentf)
	 ("C-c g"   . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

;; 语法检查工具
(use-package flycheck
  :hook (prog-mode . flycheck-mode))

;; Beacon mode - highlight the line when the cursor jumps
(use-package beacon
  :diminish
  :unless *is-windows*
  :init (add-hook 'after-init-hook 'beacon-mode))

;;minibuffers交互优化
(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
      '((swiper                . ivy-posframe-display-at-frame-center)
        (complete-symbol       . ivy-posframe-display-at-point)
        (counsel-M-x           . ivy-posframe-display-at-frame-center)
        (counsel-find-file     . ivy-posframe-display-at-frame-center)
        (ivy-switch-buffer     . ivy-posframe-display-at-frame-center)
        (t                     . ivy-posframe-display-at-frame-center))))

(ivy-posframe-mode 1)


;; magit
(use-package magit)

(use-package git-gutter+
  :ensure t
  :config
  (progn
    (global-git-gutter+-mode)))

;; 窗口跳转
(use-package ace-window
  :bind (("M-o" . 'ace-window)))

(use-package all-the-icons
  :after memoize
  :load-path "site-lisp/all-the-icons")


(use-package fiplr)

;;重启emacs包
(use-package restart-emacs)

(provide 'init-package)

;;; init-package.el ends here
