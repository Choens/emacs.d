;; orgmode-config.el - How to org!
;;
;; Reference:
;; - http://orgmode.org/

(require 'org-habit)

;; -- ORG PIM --
;;(setq org-agenda-files (list "~/Git/Notes/agenda.org"))
(setq org-default-notes-file "~/Documents/Notes/Daily.org")

(setq org-agenda-files (quote ("~/Documents/Notes/")))
(setq org-todo-keywords
           '((sequence "TODO(t@)" "IN PROGRESS(i@)" "|" "DONE(d@/!)")
             (sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f!)")
             (sequence "|" "CANCELED(c@/!)")
             (sequence "|" "WAITING(w@/!)")
             ))

;; -- Sync Org Pim --
(setq org-icalendar-include-todo t)     ;; Exports org-files with TODO items. 

;; -- Org Programming --
(setq org-src-fontify-natively t)
(add-hook 'text-mode-hook '(lambda () (auto-fill-mode 1)))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

;; -- Babelfish --
(org-babel-do-load-languages
 'org-babel-load-languages
 '(
   (ditaa      . t)
   (emacs-lisp . t)
   (latex      . t)
   (python     . t)
   (R          . t)
   ;;(sh         . t)
   (sql        . t)
   (sqlite     . t)
   ))

;; Disables org-mode from asking for permission to run stuff
;; Make sure you know what you are doing if you use this.
(setq org-confirm-babel-evaluate nil)

;; Nicer to look at HTML5 than not.
(setq org-html-doctype "html5")

;; Inlines graphics
(setq org-display-inline-images t)
(setq org-redisplay-inline-images t)
(setq org-startup-with-inline-images "inlineimages")
;(add-hook 'org-babel-after-execute-hook 'org-display-inline-images)   
;(add-hook 'org-mode-hook 'org-display-inline-images)   

;; -- Keybindings --
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(define-key global-map "\C-cc" 'org-capture)
