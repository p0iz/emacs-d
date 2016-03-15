(defun package-ensure (package)
  "Make sure the given package is installed"
  (if (package-installed-p package)
      nil
    (message "Package %s was not installed. Installing..." package)
    (package-install package)
    package))

;; Initialize package manager
(require 'package)
(push '("melpa" . "http://melpa.milkbox.net/packages/") package-archives)
;; Refresh archive if it does not exist
(or (file-exists-p package-user-dir)
    (package-refresh-contents))
(package-initialize)

;; Create a list of all packages
(defvar package-list
  (list 'ag))

;; Ensure all listed packages are installed
(mapcar 'package-ensure package-list)
