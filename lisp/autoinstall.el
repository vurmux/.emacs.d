(require 'cl)
(require 'package)

(package-initialize)

(defvar autoinstall-packages
  '(
    evil
    minimap
    neotree
    pylint
    auto-indent-mode
    json-mode
    tabbar
    undo-tree
    smart-mode-line
    )
  "Packages to install automatically")

(defun all-packages-installed ()
  "Check if all packages in `autoinstall-packages' are installed."
  (every #'package-installed-p autoinstall-packages))

(unless (all-packages-installed)
  (package-refresh-contents)
  ;;(prelude-require-packages autoinstall-packages)
  (dolist (p autoinstall-packages)
  (when (not (package-installed-p p))
    (package-install p))))

(provide 'autoinstall)
