--[[
Lua:
https://learnxinyminutes.com/docs/lua/
`:help lua-guide` or https://neovim.io/doc/user/lua-guide.html
If you experience any errors, run `:checkhealth` for more info.
--]]

-- Must happen before plugins are loaded (otherwise wrong leader will be used)
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

require 'options'

-- ??
vim.schedule(function()
  require 'mappings'
end)

require 'autocmds'
require 'cmds'

-- [[ Plugins config ]]
require 'lazy-bootstrap'
require 'lazy-plugins'

-- [[ Select colorscheme ]]
vim.o.termguicolors = true
vim.o.background = 'dark'
-- vim.cmd.colorscheme 'gruvbox'
vim.cmd.colorscheme 'gruvbox-material'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
