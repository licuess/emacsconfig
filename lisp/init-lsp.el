;;; init-lsp --- settings for lsp
;;; Commentary: (c)Cabins, github.com/cabins/.emacs.d
;;; Code:



;; c++
(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))
(provide 'init-lsp)
;;; init-lsp.el ends here
