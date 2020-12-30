;;; reforge.el --- Yet another forge; collaborate on GitHub using Magit  -*- lexical-binding: t; -*-

;; Copyright (C) 2020  Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; Version: 0.0.1
;; Keywords: convenience
;; Package-Requires: ((emacs "26.1") (magit "2.90") (promise "1.1"))
;; URL: https://github.com/conao3/reforge.el

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; Yet another forge; collaborate on GitHub using Magit.


;;; Code:

(require 'magit)
(require 'reforge-forge)

(defgroup reforge nil
  "Yet another forge; collaborate on GitHub using Magit."
  :group 'convenience
  :link '(url-link :tag "Github" "https://github.com/conao3/reforge.el"))

;;;###autoload (autoload 'reforge-dispatch "reforge" nil t)
(transient-define-prefix reforge-dispatch ()
  "Dispatch a reforge command."
  [["GitHub"
    ("\\" "Forge" reforge-forge-dispatch)]])

;;;###autoload
(defun reforge-init ()
  "Initialize reforge."
  (interactive)
  (define-key magit-mode-map (kbd "\\") 'reforge-dispatch)
  (transient-append-suffix 'magit-dispatch "%"
    '("\\" "ReForge" reforge-dispatch ?\\)))

(provide 'reforge)
;;; reforge.el ends here
