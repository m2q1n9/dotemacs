
(prelude-require-packages '(
    solarized-theme
    smart-window
    win-switch
    yasnippet
    w3m
    ssh
    lua-mode
))

(add-hook 'prog-mode-hook (lambda ()
    (rainbow-delimiters-mode)
))

(global-set-key (kbd "C-x f") 'helm-find-files)
(global-set-key (kbd "C-x C-f") 'ido-find-file)
(global-set-key (kbd "M-g m") 'er/expand-region)

(menu-bar-mode -1)
(global-hl-line-mode -1)

(setq echo-keystrokes 0.1)
(setq read-quoted-char-radix 16)
(setq default-major-mode 'text-mode)
(setq browse-url-browser-function 'w3m-browse-url)
(setq ssh-directory-tracking-mode t)
(setq gdb-show-main t)
(setq yas-global-mode t)
(setq desktop-save-mode t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq split-width-threshold nil)
(setq guru-warn-only nil)

(setq ace-jump-mode-gray-background nil)
(setq ace-jump-mode-case-fold nil)
(setq ace-jump-mode-scope 'frame)
(eval-after-load "ace-jump-mode" '(ace-jump-mode-enable-mark-sync))
(global-set-key (kbd "M-g u") 'ace-jump-mode-pop-mark)
(global-set-key (kbd "M-g j") 'ace-jump-mode)
(global-set-key (kbd "M-g c") 'ace-jump-char-mode)
(global-set-key (kbd "M-g w") 'ace-jump-word-mode)
(global-set-key (kbd "M-g l") 'ace-jump-line-mode)

(setq win-switch-idle-time 1)
(setq win-switch-window-threshold 0)
(setq win-switch-other-window-first nil)
(global-set-key (kbd "C-x o") 'win-switch-dispatch)

(require 'smart-window)
(require 'lua2-mode)

(custom-set-faces
    '(mode-line-buffer-id ((t (:foreground "magenta"))))
    '(mode-line-inactive ((t (:foreground "yellow"))))
    '(mode-line ((t (:foreground "green"))))
    '(isearch-fail ((t (:foreground "red"))))
    '(isearch ((t (:background "magenta"))))
    '(lazy-highlight ((t (:background "white"))))
    '(region ((t (:background "white"))))
    '(sp-show-pair-match-face ((t (:background "white"))))
    '(lua2-assign-global-variable ((t (:foreground "red"))))
    '(lua2-reference-global-variable ((t (:foreground "blue"))))
    '(rainbow-delimiters-depth-1-face ((t (:foreground "magenta"))))
    '(rainbow-delimiters-depth-2-face ((t (:foreground "yellow"))))
    '(rainbow-delimiters-depth-3-face ((t (:foreground "green"))))
    '(rainbow-delimiters-depth-4-face ((t (:foreground "blue"))))
    '(helm-source-header ((t (:foreground "magenta"))))
    '(helm-candidate-number ((t (:foreground "red"))))
    '(helm-selection ((t (:foreground "red"))))
    '(helm-ff-directory ((t (:foreground "blue"))))
    '(helm-ff-dotted-directory ((t (:foreground "blue"))))
    '(helm-buffer-directory ((t (:foreground "blue"))))
)

(provide 'prelude-personal)
