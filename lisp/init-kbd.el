(when *is-mac*
  (setq mac-command-modifier 'noe)
  (setq mac-option-modifier 'noe)
  )


(global-set-key (kbd "C-,") #'crux-find-user-init-file)	; Open Settings
(global-set-key (kbd "C-c r") 'recentf-open-files) ; Open Recent Files

(defalias 'yes-or-no-p' 'y-or-n-p)

(provide 'init-kbd)
