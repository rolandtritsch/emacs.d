(org-babel-load-file (expand-file-name "~/.emacs.d/roland/00-roland.org"))

;; do not edit below this line

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
    '(org-mind-map mermaid-mode python-isort elpy lsp-metals sbt-mode scala-mode elisp-format editorconfig lsp-ui lsp-mode yaml-mode windresize which-key vterm transpose-frame ox-reveal org-roam org-download markdown-toc lorem-ipsum json-mode htmlize gptel forge flycheck disable-mouse default-text-scale counsel company ace-window)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 2.0)))))

(put 'upcase-region 'disabled nil)
