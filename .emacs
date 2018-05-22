(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
			 '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)


(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/dotfiles/.emacs.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-day)))
 '(custom-safe-themes
   (quote
    ("9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" default)))
 '(default-input-method "latin-9-prefix")
 '(hl-sexp-background-color "#efebe9")
 '(package-selected-packages
   (quote
    (leuven-theme gh gist use-package smartparens org-bullets markdown-mode js2-mode exec-path-from-shell counsel color-theme-sanityinc-tomorrow color-theme ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
