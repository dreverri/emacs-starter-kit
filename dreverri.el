;; Load Erlang mode
(setq load-path (cons  "~/.emacs.d/dreverri/erlang"
                       load-path))
(setq erlang-root-dir "/usr/local/Cellar/erlang/R13B04/lib/erlang")
(setq exec-path (cons "/usr/local/bin" exec-path))
(require 'erlang-start)

;; Load flymake for Erlang
(require 'erlang-flymake)

;; Map M-x to C-x C-m and C-c C-m
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Delete trailing whitespace on save
(add-hook 'before-save-hook (lambda () (delete-trailing-whitespace)))

;; coffee-script
(add-to-list 'load-path "~/.emacs.d/dreverri/coffee-mode")
(require 'coffee-mode)
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
          '(lambda() (coffee-custom)))
