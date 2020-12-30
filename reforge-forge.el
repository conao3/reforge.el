;;; reforge-forge.el --- Reforge forge module  -*- lexical-binding: t; -*-

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

;; Reforge forge module.

;;; Code:

(require 'transient)
(require 'reforge-forge-github)

;;;###autoload (autoload 'reforge-forge-dispatch "reforge" nil t)
(transient-define-prefix reforge-forge-dispatch ()
  "Dispatch a reforge command."
  [["GitHub"
    ("h r" "Repositories" reforge-forge-github-list-repositories)]])

(provide 'reforge-forge)
;;; reforge-forge.el ends here
