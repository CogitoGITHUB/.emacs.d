;;; early-init.el --- -*- lexical-binding: t -*-


;; Disable GUI menu, tool and scroll bars early
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)



;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 1 · USER EMACS DIRECTORY                                    ║
;; ╚══════════════════════════════════════════════════════════════════╝

(setq user-emacs-directory (expand-file-name "~/.emacs.d/"))

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 2 · SUPPRESS ORG VERSION MISMATCH WARNING                   ║
;; ╚══════════════════════════════════════════════════════════════════╝

(add-to-list 'warning-suppress-types '(org-version-mismatch))

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 3 · GUIX PROFILE LOAD PATH                                  ║
;; ╚══════════════════════════════════════════════════════════════════╝

(let ((site-lisp (expand-file-name "~/.guix-profile/share/emacs/site-lisp/")))
  (when (file-directory-p site-lisp)
    (let ((dirs (directory-files site-lisp t "^[^.]")))
      (dolist (dir (reverse dirs))
        (when (file-directory-p dir)
          (push dir load-path))))))

;; ╔══════════════════════════════════════════════════════════════════╗
;; ║  § 4 · SYSTEM PROFILE LOAD PATH                                ║
;; ╚══════════════════════════════════════════════════════════════════╝

(let ((site-lisp "/run/current-system/profile/share/emacs/site-lisp/"))
  (when (file-directory-p site-lisp)
    (let ((dirs (directory-files site-lisp t "^[^.]")))
      (dolist (dir (reverse dirs))
        (when (file-directory-p dir)
          (push dir load-path))))))

;;; early-init.el ends here
