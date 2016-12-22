(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))


(put 'scroll-left 'disabled nil)
(setq lazy-highlight-cleanup nil) ; M-x lazy-highlight-cleanup
 
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

(setq column-number-mode t)
(which-function-mode 1)

;;(setq-default indent-tabs-mode nil)
;;(setq indent-line-function 'insert-tab)
(setq tab-width 8) ; or any other preferred value
(defvaralias 'c-basic-offset 'tab-width)
(defvaralias 'cperl-indent-level 'tab-width)


(add-hook 'find-file-hook (lambda () (setq buffer-read-only t)))
 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wheatgrass))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'xcscope)
(cscope-setup)
(setq cscope-do-not-update-database t)
(global-set-key (kbd "<f1>") (kbd "C-x C-q"))
(global-set-key (kbd "<f2>")   'goto-line)
(global-set-key (kbd "<f3>")   'cscope-set-initial-directory)
(global-set-key (kbd "<f4>")   'cscope-find-this-symbol)
(global-set-key (kbd "<f5>")   'cscope-find-global-definition-no-prompting)
(global-set-key (kbd "M-<f5>") 'cscope-find-global-definition)
(global-set-key (kbd "<f6>")   'cscope-pop-mark)
(global-set-key (kbd "<f7>")   'cscope-history-forward-line-current-result)
(global-set-key (kbd "M-<f7>") 'cscope-history-backward-line-current-result)
(global-set-key (kbd "<f8>")   'cscope-find-functions-calling-this-function)
(global-set-key (kbd "M-<f8>") 'cscope-find-assignments-to-this-symbol)
(global-set-key (kbd "<f9>")   'cscope-display-buffer)
(global-set-key (kbd "M-<f9>") 'cscope-display-buffer-toggle)


(global-set-key (kbd "<f10>")   'mo-git-blame-current)
(global-set-key (kbd "M-<f10>") 'vc-annotate)


(global-set-key (kbd "<f11>")   'elscreen-create)
(global-set-key (kbd "M-<f11>") 'elscreen-kill)
(global-set-key (kbd "M-<right>")   'elscreen-next)
(global-set-key (kbd "M-<left>") 'elscreen-previous)
;;(load "elscreen" "ElScreen" t)
;;(require 'elscreen)
(add-hook 'emacs-startup-hook 'elscreen-start)


;;(global-set-key (kbd "M-<left>") 'previous-buffer)
;;(global-set-key (kbd "M-<right>") 'next-buffer)
(global-set-key (kbd "M-<up>") 'other-window)


(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<M-up>"))
(global-unset-key (kbd "<M-down>"))
(global-unset-key (kbd "<M-left>"))
(global-unset-key (kbd "<M-right>"))
