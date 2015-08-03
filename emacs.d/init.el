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
(setq-default c-basic-offset 8
                  tab-width 8
                  indent-tabs-mode t)

(add-hook 'find-file-hook (lambda () (setq buffer-read-only t)))

  
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)

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


;;(setenv "PATH" (concat (getenv "PATH") ":/opt/cscope/bin"))
;;(setq cscope-do-not-update-database t)
 ;; (load-file "/usr/share/emacs/site-lisp/xcscope/xcscope.el")
(require 'xcscope)
(global-set-key (kbd "<f1>") (kbd "C-x C-q"))
(global-set-key (kbd "<f2>") 'goto-line)
(global-set-key (kbd "<f3>") 'cscope-set-initial-directory)
(global-set-key (kbd "<f4>") 'cscope-unset-initial-directory)
(global-set-key (kbd "<f5>") 'cscope-find-this-symbol)
(global-set-key (kbd "<f6>") 'cscope-find-global-definition)
(global-set-key (kbd "<f7>") 'cscope-find-global-definition-no-prompting)
(global-set-key (kbd "<f8>") 'cscope-pop-mark)
(global-set-key (kbd "<f9>") 'cscope-next-symbol)
(global-set-key (kbd "<f10>") 'cscope-next-file)
(global-set-key (kbd "<f11>") 'cscope-prev-symbol)
(global-set-key (kbd "<f12>") 'cscope-prev-file)
(global-set-key (kbd "M-<f9>") 'cscope-display-buffer)
(global-set-key (kbd "M-<f10>") 'cscope-display-buffer-toggle)

