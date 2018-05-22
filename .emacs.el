
(tool-bar-mode -1)
(scroll-bar-mode -1)
(desktop-save-mode 1)
(global-linum-mode 1)
(add-hook 'before-save-hook 'whitespace-cleanup)
(defalias 'list-buffers 'ibuffer)
(fset 'yes-or-no-p 'y-or-n-p)

(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(defconst emacs-tmp-dir (expand-file-name "~/.emacstmp/"))

(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))

; disable bell
(setq ring-bell-function 'ignore)

(add-to-list 'default-frame-alist '(font . "LiterationMonoPowerline Nerd Font 13"))
(set-face-attribute 'default t :font "LiterationMonoPowerline Nerd Font 13")

(use-package color-theme
  :ensure t)

(load-theme 'leuven t)

(use-package gist
  :ensure t
)

(use-package ace-window
  :ensure t
  :init
  (progn
    (global-set-key [remap other-window] 'ace-window)
    ))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t
  :bind (("C-s" . swiper)
         ("C-r" . swiper)
         ("C-c C-r" . ivy-resume)
         ("M-x" . counsel-M-x)
         ("C-x C-f" . counsel-find-file))
  :config
  (progn
    (ivy-mode 1)
    (setq ivy-use-virtual-buffers t)
    (setq enable-recursive-minibuffers t)
    ))

(use-package smartparens-config
  :ensure smartparens
  :config
  (progn (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm.mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package org-bullets
  :ensure t
  :config (add-hook 'org-mode-hook (lambda () ((org-bullets-mode 1) (load-theme 'leuven)))

(setq org-fontify-whole-heading-line t)

(setq org-time-clocksum-format
      (quote (:hours "%d"
                     :require-hours t
                     :minutes ":%02d"
                     :require-minutes t)))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((scheme . t)
   (ruby . t)
   (js . t)
   (sh . t)))

(setq org-src-fontify-natively t)
(setq geiser-default-implementation 'guile)

(use-package js2-mode
  :ensure t
  :mode (("\\.js\\'" . js2-mode))
  :init (setq js-indent-align-list-continuation nil)
  (setq js2-basic-offset 2))
