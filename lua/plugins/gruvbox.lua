return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000,
  config = true,
  opts = {
    overrides = {
      ['@lsp.typemod.function.defaultLibrary.lua'] = { fg = '#fe8019' },
      ['DiagnosticDeprecated'] = { undercurl = true, sp = '#fabd2f' },
      ['FloatTitle'] = { link = 'NormalFloat' },
      -- ['DiagnosticDeprecated'] = { reverse = true, sp = '#fabd2f' },
    },
  },
  -- config = function()
  --   require('gruvbox').setup {
  --     overrides = {
  --       ['@lsp.typemod.function.defaultLibrary.lua'] = { fg = '#fe8019' },
  --     },
  --   }
  -- end,
}
