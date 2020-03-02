(org-babel-load-file (expand-file-name "~/.emacs.d/roland/roland.org"))

(provide 'init)

;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(alchemist-goto-elixir-source-dir "/home/roland/Development/Clone/elixir")
 '(alchemist-hooks-test-on-save t)
 '(alchemist-mix-test-default-options (quote ("--only focus")))
 '(alchemist-test-display-compilation-output t)
 '(lsp-enable-snippet nil)
 '(magit-no-confirm (quote (safe-with-wip)))
 '(magit-wip-mode t)
 '(org-agenda-files (quote ("~/Dropbox/Notes/2020.org")))
 '(package-selected-packages
   (quote
    (abyss-theme afternoon-theme anti-zenburn-theme apropospriate-theme arjen-grey-theme autumn-light-theme basic-theme kosmos-theme leuven-theme minimal-theme monochrome-theme org-beautify-theme ubuntu-theme zenburn-theme magit org-bullets org json-mode disable-mouse protobuf-mode flycheck-plantuml plantuml-mode yaml-mode company-terraform terraform-mode markdownfmt ob-mermaid elixir-mode elixir-yasnippets flycheck flycheck-elixir flycheck-mix lsp-elixir company company-erlang ac-alchemist alchemist markdown-mode markdown-mode+ markdown-preview-eww markdown-preview-mode markdown-toc lua-mode intero use-package)))
 '(plantuml-jar-path "/home/roland/.local/jars/plantuml.jar")
)
