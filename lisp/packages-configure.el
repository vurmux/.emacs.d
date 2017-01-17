(global-linum-mode t)
(menu-bar-mode 0)
(blink-cursor-mode 0)
(column-number-mode t)
(tool-bar-mode 0)
(setq auto-save-default nil)

(load-theme 'crazyfruits t)

(require 'evil)
(evil-mode 1)
(setq evil-default-cursor t)

(require 'python)

(require 'auto-indent-mode)
(auto-indent-global-mode)
(setq auto-indent-assign-indent-level 4)
(setq tab-width 4)
(set-variable 'py-indent-offset 4)
(set-variable 'python-indent-guess-indent-offset nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(require 'package)
(package-initialize)

(require 'tabbar)
(tabbar-mode 1)
(setq tabbar-use-images nil)

(require 'punumbra-mode)
(add-hook 'prog-mode-hook 'punumbra-mode)

;;(setq sml/theme 'dark)
;;(setq sml/no-confirm-load-theme t)
;;(sml/setup)

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; Smooth scrolling
(setq mouse-wheel-scroll-amount '(2 ((shift) . 2))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 2) ;; keyboard scroll one line at a time

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; N900 language macro
(global-set-key (kbd "C-c r") 'set-input-method)
(global-set-key (kbd "C-SPC") (kbd "C-\\"))

(provide 'packages-configure)
