;;; early-init.el --- -*- lexical-binding: t -*-

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 1 · USER EMACS DIRECTORY                                    ║
;; ╚══════════════════════════════════════════════════════════════════╝

(setq user-emacs-directory (expand-file-name "~/.emacs.d/"))

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 2 · GUIX LOAD PATH                                          ║
;; ╚══════════════════════════════════════════════════════════════════╝

(let ((site-lisp (expand-file-name "~/.guix-profile/share/emacs/site-lisp/")))
  (when (file-directory-p site-lisp)
    (add-to-list 'load-path site-lisp)
    (dolist (dir (directory-files site-lisp t "^[^.]"))
      (when (file-directory-p dir)
        (add-to-list 'load-path dir)))))

;;; early-init.el ends here
