(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(require 'autoinstall)
(require 'packages-configure)

(set-default-font "Ubuntu Mono-12")
