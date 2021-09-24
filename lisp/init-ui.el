;;; init-ui --- settings for ui
;;; commentary:
;;; code:

;;设置主题
(use-package gruvbox-theme
  :init (load-theme 'gruvbox-dark-soft t))

;; smart-mode-line
(use-package smart-mode-line
	     :init
	     (setq sml/no-confirm-load-theme t)
         (setq sml/theme 'respectful)
	     (sml/setup)
)


(use-package rainbow-mode
  :config
  (progn
    (defun @-enable-rainbow ()
      (rainbow-mode t))
    (add-hook 'prog-mode-hook '@-enable-rainbow)
    ))

(use-package rainbow-delimiters
  :config
  (progn
    (defun @-enable-rainbow-delimiters ()
      (rainbow-delimiters-mode t))
    (add-hook 'prog-mode-hook '@-enable-rainbow-delimiters)))


(provide 'init-ui)
;;; init-ui ends here
