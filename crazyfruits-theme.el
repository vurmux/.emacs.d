;;; crazyfruits-theme.el --- Dark-brown medium-contrast color scheme.

;; Author: Andrey Voronov <vurmux@gmail.com>
;; Version: 1.0
;; Filename: crazyfruits-theme.el
;; Package-Requires: ((emacs "24"))
;; Keywords: theme, dark, medium contrast
;; URL: https://github.com/vurmux/crazyfruits-color-theme

;;; Commentary:

;; A dark medium-contrast colorful theme for Emacs24.
;; This color theme is designed for good code distinction with no high-contrast
;; colors. Most colors here are in green-yellow-red slice.

;;; Code:

(deftheme crazyfruits
    "Dark-brown medium-contrast color scheme")

(custom-theme-set-faces
 'crazyfruits
 '(default ((t (:foreground "#decdac" :background "#1b1812" :inherit nil))))
 '(cursor ((t (:background "#f8f8f0"))))
 '(escape-glyph ((t (:foreground "#e8341c"))))
 '(minibuffer-prompt ((t (:foreground "#e8341c"))))
 '(highlight ((t (:background "#004800"))))
 '(region ((t (:inverse-video t :foreground "#807256" :background "#1b1812"))))
 '(shadow ((t (:foreground "#656565"))))
 '(secondary-selection ((t (:background "#073642"))))
 '(trailing-whitespace ((t (:inverse-video t :foreground "#dc322f" :background "red1"))))
 '(font-lock-builtin-face ((t (:foreground "#bf43bf"))))
 '(font-lock-comment-delimiter-face ((t (:foreground "#586e75" :inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:foreground "#606060"))))
 '(font-lock-constant-face ((t (:foreground "#6565e0"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "#e4e050"))))
 '(font-lock-function-name-face ((t (:foreground "#68d744"))))
 '(font-lock-keyword-face ((t (:foreground "#e8934b"))))
 '(font-lock-negation-char-face ((t (:foreground "#dc322f"))))
 '(font-lock-preprocessor-face ((t (:foreground "#d33682" :inherit (font-lock-builtin-face)))))
 '(font-lock-regexp-grouping-backslash ((t (:foreground "#8e69c9" :inherit (bold)))))
 '(font-lock-regexp-grouping-construct ((t (:foreground "#cb4b16" :inherit (bold)))))
 '(font-lock-string-face ((t (:foreground "#e4e050"))))
 '(font-lock-type-face ((t (:foreground "#009a00"))))
 '(font-lock-variable-name-face ((t (:foreground "#b9a57d"))))
 '(font-lock-warning-face ((t (:foreground "#dc322f" :inherit (error)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:foreground "#68c244" ))))
 '(link-visited ((t (:foreground "#d33682" :inherit (link)))))
 '(fringe ((t (:background "#343536" :foreground "#464748"))))
 '(header-line ((t (:box nil :inverse-video t :foreground "#839496" :background "#073642" :inherit (mode-line)))))
 '(tooltip ((t (:foreground "black" :background "lightyellow" :inherit (variable-pitch)))))
 '(mode-line ((t (:box nil :inverse-video t :foreground "#93a1a1" :background "#073642"))))
 '(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color "grey40" :style released-button))) (t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box nil :inverse-video t :foreground "#657b83" :background "#073642" :inherit (mode-line)))))
 '(isearch ((t (:background "#242424" :foreground "#e4e050" :inverse-video t))))
 '(isearch-fail ((t (:background "#242424" :foreground "#e8341c" :inverse-video t))))
 '(lazy-highlight ((t (:inverse-video t :foreground "#b58900" :background "#002b36"))))
 '(match ((t (:background "#9a32cd"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 )

(when load-file-name (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))
(defun crazyfruits-theme() (interactive) (load-theme 'crazyfruits t))
(provide-theme 'crazyfruits)
