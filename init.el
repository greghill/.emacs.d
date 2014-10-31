;;; init.el --- emacs initialization file.
;;; Commentary:
;;;   loaded on start.

;;; Code:
(add-hook 'after-init-hook (lambda () (load "~/.emacs.d/customize.el")))
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Sets the default font
(set-frame-font "Andale Mono")

;; Enables line numbers
(global-linum-mode 1)

;; Enables column numbers
(setq column-number-mode t)

;; Spaces for tabs
(setq-default indent-tabs-mode nil)

;; Set window size to 80 characters
(add-to-list 'default-frame-alist '(width . 81))

;; Don't scroll when pointer reaches end of screen
(setq auto-window-vscroll nil)
(setq backup-inhibited t)

;; Prevent autoscroll from jumping
(setq scroll-conservatively 10000)

;; Sets the initial prompt
(setq
 initial-scratch-message
 ";; Appreciate every single person. Look at them like a golden,
;; million-dollar baby.
;;                    - Lil B 'The BASED God'")

;; Don't wrap lines
(setq-default truncate-lines t)

;; Accept 'y' and 'n' as answers to yes/no questions
(defalias 'yes-or-no-p 'y-or-n-p)
(defvar dabbrev-case-distinction)
(defvar dabbrev-case-fold-search)
(defvar windmove-wrap-around)
(setq dabbrev-case-distinction nil)
(setq dabbrev-case-fold-search nil)
(setq windmove-wrap-around t)
(setq echo-keystrokes 0.1)
(setq delete-active-region nil)

;; Turn off start message
(setq inhibit-startup-message t)

;; Turns off the tool bar
(tool-bar-mode -1)

(provide 'init)
;;; init.el ends here
