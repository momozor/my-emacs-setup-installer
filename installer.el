(setq lexical-binding t)

(message "")
(message "Launching..")
(message "")
(defconst emacs-root "~/.emacs")
(message "EMACS INIT ROOT: %s" emacs-root)
(message "")

(find-file "./setup.txt")
(write-file emacs-root)
(kill-buffer)

(message "")
(message "Loading melpa list..")
(message "")
(load-file emacs-root)

(message "")
(message "Refreshing package lists from (M)ELPA..")
(message "")
(package-refresh-contents)

(message "")
(message "Installing defined packages..")
(message "")
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
        monokai-theme))

(dolist (i package-list)
  (message "")
  (message "Installing %s" i)
  (package-install i))

(find-file "./setup2.txt")
(write-file emacs-root)
(kill-buffer)

(message "")
(message "done")
(message "")
