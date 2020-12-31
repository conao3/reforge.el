;;; reforge-core.el --- Reforge core module  -*- lexical-binding: t; -*-

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

;; Reforge core module.

;;; Code:

(require 'closql)
(require 'eieio)

(defclass reforge-object (closql-object)
  ((closql-class-prefix :initform "reforge-"))
  "Base class of reforge."
  :abstract t)

(defclass reforge-repository (reforge-object)
  nil
  "Class of repository"
  :abstract t)

(provide 'reforge-core)
;;; reforge-core.el ends here
