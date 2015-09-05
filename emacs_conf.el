(setq inhibit-startup-message t)
(global-font-lock-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
;;(menu-bar-mode nil)

;;Do not backup files. *~
(setq make-backup-files nil)

;;scroll smoothly
(setq scroll-margin 3 scroll-conservatively 10000)

;;C-k kills whole line
;;(setq-default kill-whole-line t)

(setq-default c-default-style "bsd"
			  c-basic-offset 4
			  tab-width 4
			  indent-tabs-mode t)

(define-key global-map (kbd "RET") 'newline-and-indent)

;; (defun comment-or-uncomment-region-or-line ()
;;       "Comments or uncomments the region or the current line if there's no active region."
;; 	      (interactive)
;; 		      (let (beg end)
;; 				        (if (region-active-p)
;; 							            (setq beg (region-beginning) end (region-end))
;; 						              (setq beg (line-beginning-position) end (line-end-position)))
;; 						        (comment-or-uncomment-region beg end)
;; 								        (next-line)))

;; (define-key global-map (kbd "\C-c\C-c") 'comment-or-uncomment-region-or-line)

;; default c++-mode for .h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.impl\\'" . c++-mode))

(add-to-list 'auto-mode-alist '("_user" . shell-script-mode))
(add-to-list 'auto-mode-alist '("bash_" . shell-script-mode))

(electric-pair-mode 1)

(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; uncomment next line after installing the auto-complete plugin
;;(ac-config-default)

(setq ring-bell-function 'ignore)
