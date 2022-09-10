(let* ((current-directory (file-name-directory load-file-name))
       (features-directory (expand-file-name ".." current-directory))
       (project-directory (expand-file-name ".." features-directory)))
  (setq string-edit-at-point-root-path project-directory))

(add-to-list 'load-path string-edit-at-point-root-path)

(require 'string-edit-at-point)
(require 'espuds)
(require 'ert)

(Before
 (switch-to-buffer
  (get-buffer-create "*string-edit-at-point-main-buffer*"))
 (delete-other-windows)
 (erase-buffer)
 (fundamental-mode)
 (deactivate-mark))

(After)
