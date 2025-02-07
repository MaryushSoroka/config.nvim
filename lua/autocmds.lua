-- [[ Basic Autocommands ]]
-- `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
-- `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim.api.nvim_create_autocmd('BufWinEnter', {
--   desc = 'Set keywordprg to :help',
--   group = vim.api.nvim_create_augroup('hehehe', { clear = true }),
--   callback = function()
--     vim.api.nvim_set_option_value('keywordprg', ':help', { scope = 'local' })
--   end,
-- })
