--[[
Lua:
https://learnxinyminutes.com/docs/lua/
`:help lua-guide` or https://neovim.io/doc/user/lua-guide.html
If you experience any errors, run `:checkhealth` for more info.
--]]

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'c', 'cpp' },
  callback = function()
    vim.bo.commentstring = '// %s'
  end,
})

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
vim.o.background = 'dark'
vim.cmd 'colorscheme gruvbox'

-- local handler = {
--   show = function(namespace, bufnr, diagnostics, opts)
--     -- vim.notify(vim.inspect(diagnostics))
--     for i, diagnostic in ipairs(diagnostics) do
--       if diagnostic.code == 'deprecated' then
--         local text = vim.api.nvim_buf_get_text(bufnr, diagnostic.lnum, diagnostic.col, diagnostic.end_lnum, diagnostic.end_col, {})
--         -- vim.notify(text[1])
--         vim.api.nvim_buf_set_text(bufnr, diagnostic.lnum, diagnostic.col, diagnostic.end_lnum, diagnostic.end_col, {string.reverse(text[1])})
--       end
--     end
--   end,
--   hide = function() end,
-- }
-- vim.diagnostic.handlers['my/notify'] = handler

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
