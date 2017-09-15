(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
			 '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
			 '("marmalade" . "https://marmalade-repo.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/dotfiles/.emacs.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (geiser use-package smartparens org-bullets markdown-mode exec-path-from-shell counsel color-theme-sanityinc-tomorrow color-theme ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
