(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-night)))
 '(custom-safe-themes
   (quote
    ("06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" default)))
 '(package-selected-packages
   (quote
    (use-package color-theme-sanityinc-tomorrow neotree all-the-icons feature-mode fiplr markdown-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; global configuration
(tool-bar-mode -1)
(scroll-bar-mode -1)
(desktop-save-mode 1) ; save/restore opened files

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; indentation setting
(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq ring-bell-function 'ignore)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; markdown related
(use-package markdown-mode
	     :ensure t
	     :commands (markdown-mode gfm-mode)
	     :mode (("README\\.md\\'" . gfm.mode)
		    ("\\.md\\'" . markdown-mode)
		    ("\\.markdown\\'" . markdown-mode))
	     :init (setq markdown-command "multimarkdown"))

;; save backup files in a directory instead of being spread
;; across the filesystem
(setq backup-directory-alist
      `((".*" . ,"~/.emacstmp")))
(setq auto-save-file-name-transforms
      `((".*" ,"~/.emacstmp" t)))
(setq auto-save-default nil)

;; name completion for C-x-f
(require 'ido)
(ido-mode t)
;; (ido-better-flex/enable)

;; feature-mode (for cucumber)
(require 'feature-mode)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))

(setq feature-step-search-path "features/**/*steps.rb")
(setq feature-step-search-gem-path "gems/ruby/*/gems/*/**/*steps.rb")

;; neotree (with icons)
(require 'all-the-icons)
(require 'neotree)
(global-set-key (kbd "C-x n") 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
