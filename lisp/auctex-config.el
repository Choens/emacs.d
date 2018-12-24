;; auctex-config.el - Edit LaTeX in Emacs!
;;
;; Reference:
;; - https://www.emacswiki.org/emacs/AUCTeX
;; - http://cachestocaches.com/2015/8/getting-started-use-package/

(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)
