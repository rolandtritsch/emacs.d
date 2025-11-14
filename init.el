(org-babel-load-file (expand-file-name "~/.emacs.d/roland/00-roland.org"))

;; do not edit below this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
    '(add-node-modules-path aidermacs claude-code-ide company counsel default-text-scale disable-mouse
       editorconfig elisp-format forge gptel htmlize json-mode lorem-ipsum lsp-metals lsp-ui
       markdown-toc org-download org-mind-map org-roam ox-reveal sbt-mode tide transpose-frame
       typescript-mode vterm which-key windresize yaml-mode))
 '(package-vc-selected-packages
    '((claude-code-ide :url "https://github.com/manzaltu/claude-code-ide.el"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))

(put 'upcase-region 'disabled nil)
