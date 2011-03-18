#!/usr/bin/ruby
# -*- coding: utf-8 -*-
#
# KindleClip
# ==========
#
# User interface for managing Amazon Kindle's "My Clippings" file.
#
# Copyright © 2011 Gunnar Wolf <gwolf@gwolf.org>
#
# ============================================================
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see
# <http://www.gnu.org/licenses/>.
#
# ============================================================
#
# This program is in no way endorsed, promoted or should be associated
# with Amazon. It is not –and does not aim to be– an official Kindle
# project.
require 'clippings'
require 'kindleclip/ui'

clipfile = $ARGV[0] || 'My Clippings.txt'

if ! File.exists?(clipfile)
  puts '"My Clippings.txt" was not found in the current path, and no clippings'
  puts 'file was otherwise specified - Cannot continue.'
  exit 1
end

ui = KindleClipUI.new(clipfile)
ui.show
Gtk.main
