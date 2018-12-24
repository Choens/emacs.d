;; elpy-config.el - Programming for Python
;;
;; Reference:
;; - https://realpython.com/blog/python/emacs-the-best-python-editor/
;; - https://emacs.stackexchange.com/questions/16637/how-to-set-up-elpy-to-use-python3
;;

(elpy-enable)

;; Enables flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enables PEP8 checking
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

;; Use Python3 damnit
(setq elpy-rpc-python-command "python3")

(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)
(add-to-list 'python-shell-completion-native-disabled-interpreters
             "jupyter")

;; USe Spyder-compatible codecells.
(setq elpy-shell-codecell-beginning-regexp "#%%")
(setq elpy-shell-cell-boundary-regexp  "#%%")
