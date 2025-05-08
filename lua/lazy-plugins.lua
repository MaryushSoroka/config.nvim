-- [[ Configure and install plugins ]]
-- To check the current status of your plugins, run :Lazy
-- You can press `?` in this menu for help. Use `:q` to close the window
-- To update plugins you can run :Lazy update
require('lazy').setup({
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  require 'plugins.oil',

  require 'plugins.venv-selector',

  -- Git integration
  require 'plugins.gitsigns',

  -- Show key suggestions
  require 'plugins.which-key',
  require 'plugins.telescope',

  -- LSP Plugins
  require 'plugins.lazydev',
  require 'plugins.lspconfig',

  -- Autoformat
  require 'plugins.conform',

  -- Autocompletion
  -- require 'plugins.cmp',
  require 'plugins.blink',

  -- Autopairs
  require 'plugins.autopairs',

  --{ -- You can easily change to a different colorscheme.
  --  -- Change the name of the colorscheme plugin below, and then
  --  -- change the command in the config to whatever the name of that colorscheme is.
  --  --
  --  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  --  'folke/tokyonight.nvim',
  --  priority = 1000, -- Make sure to load this before all the other start plugins.
  --  init = function()
  --    -- Load the colorscheme here.
  --    -- Like many other themes, this one has different styles, and you could load
  --    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
  --    vim.cmd.colorscheme 'tokyonight-night'

  --    -- You can configure highlights by doing something like:
  --    vim.cmd.hi 'Comment gui=none'
  --  end,
  --},

  require 'plugins.gruvbox',

  -- Highlight todo, notes, etc in comments
  -- { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
  --
  -- Collection of various small independent plugins/modules
  require 'plugins.mini',

  -- Highlight, edit, and navigate code
  require 'plugins.treesitter',

  -- The following comments only work if you have downloaded the kickstart repo, not just copy pasted the
  -- init.lua. If you want these files, they are in the repository, so you can just download them and
  -- place them in the correct locations.

  -- NOTE: Next step on your Neovim journey: Add/Configure additional plugins for Kickstart
  --
  --  Here are some example plugins that I've included in the Kickstart repository.
  --  Uncomment any of the lines below to enable them (you will need to restart nvim).
  --
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps

  -- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
  -- Or use telescope!
  -- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
  -- you can continue same window with `<space>sr` which resumes last telescope search
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
