;;; init.el --- settings for inti configuration
;;; Commentary:
;;; Code:

;; load lisp floder
(add-to-list 'load-path
	          (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

;; settings for independent packages and etc
(require 'init-elpa)

(require 'init-const)

(require 'init-tree)

(require 'init-kbd)

(require 'init-start)

(require 'init-package)

(require 'init-lsp)

(require 'init-lang)

(require 'init-ui)

(when (file-exists-p custom-file)
  (load-file custom-file))

;;; init.el ends here


