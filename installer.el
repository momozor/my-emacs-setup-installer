(setq lexical-binding t)

(message "")
(message "Launching..")
(message "")
(defconst emacs-root "~/.ewe-emacs")
(message "EMACS ROOT: %s" emacs-root)
(message "")

(find-file "./setup.txt")
(write-file emacs-root)
(load-file emacs-root)
(package-refresh-contents)

;; (M)ELPA package list
;; install packages from here
(setq package-list
      '(smex
        nyan-mode
        neotree
        python-mode
        php-mode
        slime
        auto-complete
        aggressive-indent
        company
        elixir-mode))

(dolist (i package-list)
  (package-install i))

(find-file "./setup2.txt")
(append-to-file 17 106 emacs-root)
