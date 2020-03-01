;;Melpa settings
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq inferior-lisp-program "sbcl")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
(slime-setup '(slime-fancy slime-company))

;;File settings
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq custom-safe-themes t)

;;UI settings
(color-theme-sanityinc-tomorrow-blue)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;(set-face-attribute 'default nil :font "mononoki-11" )
;;(set-frame-font "mononoki-11" nil t)
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
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))

;;Lisp settings
(add-to-list 'auto-mode-alist '("\\.stumpwmrc\\'" . lisp-mode))

;;JS settings (require 'indium)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . js2-mode))
(add-hook 'js2-mode-hook #'indium-interaction-mode)
(setq-default js2-basic-offset 2)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-enabled-themes (quote (sanityinc-tomorrow-blue)))
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(fci-rule-color "#383838")
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-tomorrow paredit slime ## smart-tabs-mode zenburn-theme yasnippet-snippets web-mode undo-tree solarized-theme smartparens smart-mode-line rjsx-mode projectile pacmacs minesweeper magit indium indent-guide highlight-thing flycheck evil-nerd-commenter dumb-jump direx dired-k beacon aggressive-indent ace-window ace-jump-mode 2048-game)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
