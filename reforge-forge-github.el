;;; reforge-forge-github.el --- Reforge GitHub module  -*- lexical-binding: t; -*-

;; Copyright (C) 2020 Naoya Yamashita

;; Author: Naoya Yamashita <conao3@gmail.com>
;; Keywords: convenience

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

;; Reforge GitHub module.

;;; Code:

(defvar reforge-forge-github-buffer* nil)

(defun reforge-forge-github-buffer ()
  "Get buffer for reforge-forge-github."
  (or reforge-forge-github-buffer*
      (setq reforge-forge-github-buffer*
            (generate-new-buffer "*Reforge - GitHub*"))))

(defun reforge-forge-github-list-repositories ()
  "List own repositories on GitHub."
  (interactive)
  (with-current-buffer (reforge-forge-github-buffer)
    (erase-buffer)
    (insert (buffer-name))
    (display-buffer (current-buffer))))

(provide 'reforge-forge-github)
;;; reforge-forge-github.el ends here
