return {
  'linux-cultist/venv-selector.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'mfussenegger/nvim-dap',
    'mfussenegger/nvim-dap-python', --optional
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
  },
  lazy = true,
  cmd = { 'VenvSelect', 'VenvSelectPath' },
  -- ft = { 'py', 'pyi' },
  branch = 'regexp', -- This is the regexp branch, use this for the new version
  config = function()
    require('venv-selector').setup {
      settings = {
        options = {
          debug = true,
        },
      },
    }
    vim.api.nvim_create_user_command('VenvSelectPath', function(data)
      -- vim.notify(vim.inspect(data), 1, {})
      require('venv-selector').activate_from_path(data.args)
    end, { nargs = 1, complete = 'file' })
  end,
  keys = {
    -- { ',v', '<cmd>VenvSelect<cr>' },
  },
}
