;;; .dir-locals.el — Emacs directory-local config for mate-tweak
((python-mode
  . ((indent-tabs-mode        . nil)
     (python-indent-offset    . 4)
     (fill-column             . 99)
     (eglot-workspace-configuration
      . (:pylsp
         (:plugins
          (:black      (:enabled t :line_length 99)
           :pylint     (:enabled t
                        :args ["--disable=import-error,no-member,no-name-in-module"
                               "--disable=too-many-instance-attributes"
                               "--disable=too-many-public-methods"
                               "--disable=too-many-branches"
                               "--disable=too-many-statements"
                               "--disable=too-many-locals"
                               "--disable=too-many-lines"
                               "--disable=missing-function-docstring"
                               "--disable=missing-class-docstring"
                               "--disable=missing-module-docstring"
                               "--disable=too-few-public-methods"
                               "--disable=attribute-defined-outside-init"])
           :pycodestyle (:enabled nil)
           :pyflakes    (:enabled nil)
           :autopep8    (:enabled nil)
           :yapf        (:enabled nil)
           :mccabe      (:enabled nil)
           :flake8      (:enabled nil)))))
     (eval
      . (progn
          (add-hook 'before-save-hook #'eglot-format-buffer nil t)
          (setq mode-name "py/mate-tweak"))))))
 (python-ts-mode          ; tree-sitter variant (Emacs ≥ 29)
  . ((indent-tabs-mode        . nil)
     (python-indent-offset    . 4)
     (fill-column             . 99)
     (eglot-workspace-configuration
      . (:pylsp
         (:plugins
          (:black      (:enabled t :line_length 99)
           :pylint     (:enabled t
                        :args ["--disable=import-error,no-member,no-name-in-module"
                               "--disable=too-many-instance-attributes"
                               "--disable=too-many-public-methods"
                               "--disable=too-many-branches"
                               "--disable=too-many-statements"
                               "--disable=too-many-locals"
                               "--disable=too-many-lines"
                               "--disable=missing-function-docstring"
                               "--disable=missing-class-docstring"
                               "--disable=missing-module-docstring"
                               "--disable=too-few-public-methods"
                               "--disable=attribute-defined-outside-init"])
           :pycodestyle (:enabled nil)
           :pyflakes    (:enabled nil)
           :autopep8    (:enabled nil)
           :yapf        (:enabled nil)
           :mccabe      (:enabled nil)
           :flake8      (:enabled nil)))))
     (eval
      . (progn
          (add-hook 'before-save-hook #'eglot-format-buffer nil t)
          (setq mode-name "py/mate-tweak")))))
 (scheme-mode             ; for guix/*.scm and manifest.scm
  . ((indent-tabs-mode . nil)
     (fill-column      . 79))))
