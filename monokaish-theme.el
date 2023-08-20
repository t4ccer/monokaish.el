;;; monokaish-theme.el --- A monokaish color theme for Emacs -*- lexical-binding: t -*-

;; Copyright (C) 2022 Tomasz Maciosowski (t4ccer)

;; Author: Tomasz Maciosowski <t4ccer@gmail.com>
;; Maintainer: Tomasz Maciosowski <t4ccer@gmail.com>
;; Version: 0.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'autothemer)

(autothemer-deftheme
 monokaish ""

 ((((class color) (min-colors #xFFFFFF))) ;; We're only concerned with graphical Emacs (for now)

  ;; Color palette
  (monokaish-black      "#222222")
  (monokaish-dark-gray  "#333333")
  (monokaish-gray       "#666666")
  (monokaish-light-gray "#aaaaaa")
  (monokaish-white      "#dddddd")
  (monokaish-orange     "#fd971f")
  (monokaish-yellow     "#e6db74")
  (monokaish-purple     "#9d65ff")
  (monokaish-blue       "#4eb4fa")
  (monokaish-red        "#f92672")
  (monokaish-red-dull   "#c15d81")
  (monokaish-green      "#a7e22e")
  (monokaish-green-dull "#98b758"))

 ;; Customize faces
 ((default             (:foreground monokaish-white :background monokaish-black))
  (cursor              (:background monokaish-purple))
  (region              (:foreground monokaish-black :background monokaish-blue))
  (highlight           (:inherit 'region))
  (isearch             (:inherit 'region))
  (isearch-fail        (:background monokaish-red :foreground monokaish-black))
  (link                (:foreground monokaish-blue :underline t))
  (custom-link         (:inherit 'link))
  (org-link            (:inherit 'link))
  (button              (:inherit 'link))
  (custom-visibility   (:inherit 'link))
  (mode-line-inactive  (:background monokaish-dark-gray))
  (mode-line           (:background monokaish-gray))
  (mode-line-buffer-id (:foreground monokaish-blue :weight 'bold))
  (fringe              (:background monokaish-black :foreground monokaish-black))

  (linum-relative-current-face (:foreground monokaish-blue :weight 'bold))
  
  (rg-match-face       (:inherit 'region))

  (haskell-constructor-face (:foreground monokaish-blue))
  (haskell-type-face        (:foreground monokaish-blue))
  (haskell-keyword-face     (:foreground monokaish-red))
  (haskell-definition-face  (:foreground monokaish-green))
  (haskell-pragma-face      (:foreground monokaish-gray))
  (haskell-operator-face    (:foreground monokaish-red))

  (nix-attribute-face (:foreground monokaish-green))

  (font-lock-comment-face       (:foreground monokaish-gray))
  (font-lock-doc-face           (:foreground monokaish-gray))
  (font-lock-keyword-face       (:foreground monokaish-red))
  (font-lock-builtin-face       (:foreground monokaish-red))
  (font-lock-constant-face      (:foreground monokaish-blue))
  (font-lock-function-name-face (:foreground monokaish-green))
  (font-lock-string-face        (:foreground monokaish-orange))
  (font-lock-type-face          (:foreground monokaish-blue))
  (font-lock-variable-name-face (:foreground monokaish-white))
  (font-lock-warning-face       (:foreground monokaish-red :bold t))

  ;; MODE SUPPORT: smerge
  (smerge-upper           (:background monokaish-red-dull))
  (smerge-lower           (:background monokaish-green-dull))
  (smerge-base            (:background monokaish-yellow))
  (smerge-markers         (:background nil))
  (smerge-refined-added   (:background monokaish-green))
  (smerge-refined-removed (:background monokaish-red))
  (smerge-refine-changed  (:background nil :foreground nil))

  ;; ivy
  (ivy-current-match           (:inherit 'region))
  (ivy-minibuffer-match-face-1 (:foreground monokaish-blue))
  (ivy-minibuffer-match-face-2 (:inherit 'ivy-minibuffer-match-face-1))
  (ivy-minibuffer-match-face-3 (:inherit 'ivy-minibuffer-match-face-1))
  (ivy-minibuffer-match-face-4 (:inherit 'ivy-minibuffer-match-face-1))
  (ivy-highlight-face          (:inherit 'default))
  (ivy-confirm-face            (:foreground monokaish-green))
  (ivy-match-required-face     (:foreground monokaish-red))
  (ivy-remote                  (:foreground monokaish-blue))

  ;; org mode
  (org-block          (:foreground monokaish-white :background monokaish-dark-gray))
  (org-todo           (:foreground monokaish-red  :weight 'bold))
  (org-ellipsis       (:foreground monokaish-white  :weight 'bold))
  (org-verbatim       (:foreground monokaish-light-gray))
  (org-document-title (:foreground monokaish-green :weight 'bold :height 150))
  (org-drawer         (:foreground monokaish-gray))
  (org-level-1        (:foreground monokaish-red))
  (org-level-2        (:foreground monokaish-blue))
  (org-level-3        (:foreground monokaish-green))
  (org-level-4        (:foreground monokaish-orange))

  ;; rainbow-delimiters
  (rainbow-delimiters-depth-1-face   (:foreground monokaish-blue))
  (rainbow-delimiters-depth-2-face   (:foreground monokaish-red))
  (rainbow-delimiters-depth-3-face   (:foreground monokaish-green))
  (rainbow-delimiters-depth-4-face   (:foreground monokaish-orange))
  (rainbow-delimiters-depth-5-face   (:foreground monokaish-blue))
  (rainbow-delimiters-depth-6-face   (:foreground monokaish-red))
  (rainbow-delimiters-depth-7-face   (:foreground monokaish-green))
  (rainbow-delimiters-depth-8-face   (:foreground monokaish-orange))
  (rainbow-delimiters-depth-9-face   (:foreground monokaish-blue))
  (rainbow-delimiters-depth-10-face  (:foreground monokaish-red))
  (rainbow-delimiters-depth-11-face  (:foreground monokaish-green))
  (rainbow-delimiters-depth-12-face  (:foreground monokaish-orange))
  (rainbow-delimiters-unmatched-face (:foreground monokaish-white :background monokaish-red))

  ;; vterm
  (vterm-color-default (:background monokaish-white :foreground monokaish-white))
  (vterm-color-black   (:background monokaish-gray :foreground monokaish-gray))
  (vterm-color-red     (:background monokaish-red :foreground monokaish-red))
  (vterm-color-green   (:background monokaish-green :foreground monokaish-green))
  (vterm-color-yellow  (:background monokaish-orange :foreground monokaish-orange))
  (vterm-color-blue    (:background monokaish-blue :foreground monokaish-blue))
  (vterm-color-magenta (:background monokaish-purple :foreground monokaish-purple))
  (vterm-color-cyan    (:background monokaish-blue :foreground monokaish-blue))
  (vterm-color-white   (:background monokaish-white :foreground monokaish-white))

  ;; dired
  (dired-directory (:foreground monokaish-blue))
  (dired-symlink   (:foreground monokaish-purple))

  ;; compilation
  (compilation-info           (:foreground monokaish-blue))
  (compilation-mode-line-fail (:foreground monokaish-red))
  (error                      (:foreground monokaish-red :bold t))
  (success                    (:foreground monokaish-green :bold t))
  (warning                    (:foreground monokaish-purple :bold t))

  ;; Rustic compilation
  (rustic-compilation-error   (:foreground monokaish-red))
  (rustic-compilation-warning (:foreground monokaish-yellow))
  (rustic-compilation-info    (:foreground monokaish-blue))

  ;; lsp-io
  (lsp-ui-sideline-code-action (:foreground monokaish-blue))
  (lsp-rename-placeholder-face (:inherit 'custom-link))
  (lsp-ui-doc-url              (:inherit 'custom-link))

  ;; hl-todo
  (hl-todo (:inherit 'warning))

  ;; company-mode
  (company-tooltip                      (:foreground monokaish-white))
  (company-scrollbar-bg                 (:background monokaish-black))
  (company-scrollbar-fg                 (:background monokaish-black))
  (company-tooltip-selection            (:inherit    'ivy-current-match))
  (company-tooltip-common               (:foreground monokaish-blue))
  (company-tooltip-common-selection     (:inherit    'company-tooltip-selection))
  (company-tooltip-annotation           (:foreground monokaish-gray))
  (company-tooltip-annotation-selection (:inherit    'company-tooltip-selection))

  (diff-refine-added   (:foreground monokaish-black :background monokaish-green))
  (diff-refine-removed (:foreground monokaish-white :background monokaish-red))
  
  ;; magit
  (magit-branch-local                (:foreground monokaish-blue))
  (magit-branch-current              (:foreground monokaish-green))
  (magit-diff-added                  (:foreground monokaish-green))
  (magit-diff-removed                (:foreground monokaish-red))
  (magit-diff-hunk-heading           (:background monokaish-light-gray))
  (magit-diff-context                (:background monokaish-dark-gray))
  (magit-section-heading             (:foreground monokaish-blue))
  (magit-branch-remote               (:inherit    'magit-branch-local))
  (magit-branch-remote-head          (:inhert     'magit-branch-current))
  (magit-diff-context-highlight      (:inherit    'magit-diff-context))  
  (magit-diff-hunk-heading-highlight (:inherit    'region))
  (magit-diff-removed-highlight      (:inherit    'magit-diff-removed))
  (magit-diff-added-highlight        (:inherit    'magit-diff-added))))


;;;###autoload
(when (and (boundp 'custom-theme-load-path)
           load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (add-to-list 'load-path
	       (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'monokaish)
(provide 'monokaish-theme)
;;; monokaish-theme.el ends here
