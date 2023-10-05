;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "Thomas Bennett"
      user-mail-address (getenv "GIT_USERMAIL"))

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
(setq ;; doom-font (font-spec :family "Fira Code Tommy" :size 13 :weight 'semi-bold)
     doom-font "Fira Code Tommy Retina:pixelsize=13:style=Retina"
     doom-unicode-font (font-spec :family "FiraMono Nerd Font Medium")
     doom-variable-pitch-font (font-spec :family "DejaVu Serif" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'modus-operandi)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

(global-visual-line-mode t)

(after! rainbow-mode
  (rainbow-mode t))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').

;;org
;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory (getenv "NOTES_PATH"))

(defun list-org-files ()
  (directory-files-recursively org-directory "\.org$"))

(after! org
  (setq org-refile-use-outline-path 'file
        org-outline-path-complete-in-steps nil
        org-refile-targets '((list-org-files  :maxlevel . 9))
        org-refile-allow-creating-parent-nodes t
        org-log-refile 'time
        org-log-done 'time
        org-log-done-with-time t

        ;; visual aspect
        org-startup-with-inline-images t
        org-pretty-entities t
        org-hide-emphasis-markers t
        org-startup-indented t)

        ;; building new templates for reading-notes on movie, podcasts, books, etc
        ;; (add-to-list org-capture-templates ())
)

(use-package! org-appear
  :hook (org-mode . org-appear-mode))

(use-package! org-modern
  :hook (org-mode . org-modern-mode))

(after! flyspell
  (flyspell-mode 0))

(after! swiper
  (global-set-key "\C-s" 'swiper))

;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
