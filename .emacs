;;DXC proxy settings
(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10\\..*\\|192\\.168\\..*\\)")
	("http" . "web-proxy.houston.entsvcs.net:8080")))

;;Melpa settings
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;;(setq inferior-lisp-program "sbcl")
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))

;;File settings
(setq backup-inhibited t)
(setq auto-save-default nil)

;;UI settings
(load-theme 'solarized-light t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-face-attribute 'default nil :font "mononoki-9.5" )
(set-frame-font "mononoki-9.5" nil t)
(sml/setup)
(beacon-mode 1)
(global-highlight-thing-mode)
(setq-default indent-tabs-mode nil)

;;Global modes
(projectile-mode +1)
(yas-global-mode 1)
(dumb-jump-mode)
(global-aggressive-indent-mode 1)
(indent-guide-global-mode)

;;Key bindings
(define-key global-map (kbd "<S-down-mouse-1>") 'mouse-save-then-kill)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
;;(define-key global-map (kbd "C-u C-c SPC") 'ace-jump-char-mode)
;;(define-key global-map (kbd "C-u C-u C-c SPC") 'ace-jump-line-mode)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key global-map (kbd "M-o") 'ace-window)
(define-key global-map (kbd "C-\\") 'direx-project:jump-to-project-root-other-window)
;;(define-key direx:direx-mode-map (kbd "K") 'direx-k)
(define-key global-map (kbd "M-;") 'evilnc-comment-or-uncomment-lines)
(define-key global-map (kbd "C-S-c C-S-c") 'mc/edit-lines)
(define-key global-map (kbd "C->") 'mc/mark-next-like-this)
(define-key global-map (kbd "C-<") 'mc/mark-previous-like-this)
(define-key global-map (kbd "C-c C-<") 'mc/mark-all-like-this)


;;Hooks & global code settings
(require 'smartparens-config)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook 'highlight-thing-mode)
(add-hook 'prog-mode-hook #'smartparens-mode)
(smart-tabs-insinuate 'c 'javascript)
(smart-tabs-advice language-indent-line language-basic-offset)


;;JS settings
(require 'indium)
(add-hook 'js-mode-hook #'indium-interaction-mode)
(js-indent-level 2)
(setq-default js2-basic-offset 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right. 
 '(package-selected-packages
   (quote
    (smart-tabs-mode zenburn-theme yasnippet-snippets web-mode undo-tree solarized-theme smartparens smart-mode-line rjsx-mode projectile pacmacs minesweeper magit indium indent-guide highlight-thing flycheck evil-nerd-commenter dumb-jump direx dired-k beacon aggressive-indent ace-window ace-jump-mode 2048-game))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
