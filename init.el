;;; init.el --- -*- lexical-binding: t -*-

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 1 · LOAD PATH                                               ║
;; ╚══════════════════════════════════════════════════════════════════╝

(add-to-list 'load-path
             (expand-file-name "lisp/" user-emacs-directory))

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 2 · BOOTSTRAP DEPENDENCIES                                  ║
;; ╚══════════════════════════════════════════════════════════════════╝

(require 'leaf)
(require 'denote)

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 3 · CONFIGURE DENOTE                                        ║
;; ╚══════════════════════════════════════════════════════════════════╝

(setq denote-directory (expand-file-name "modules/" user-emacs-directory)
      org-id-method    'uuid)

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 4 · LOAD LITERATE CONFIG SYSTEM                             ║
;; ╚══════════════════════════════════════════════════════════════════╝

(require 'literate-config-system)

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 5 · CONFIGURE                                               ║
;; ╚══════════════════════════════════════════════════════════════════╝

(setq lc-org-directory    (expand-file-name "modules/" user-emacs-directory)
      lc-denote-directory (expand-file-name "modules/" user-emacs-directory)
      lc-use-leaf         t
      lc-silent           t)

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 6 · BOOT                                                    ║
;; ╚══════════════════════════════════════════════════════════════════╝

(literate-config-load)

;;; init.el ends here
