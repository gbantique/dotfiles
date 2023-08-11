return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
--  { "folke/neoconf.nvim", cmd = "Neoconf" },
 
--  {
--    "folke/tokyonight.nvim",
--    lazy = false,
--    priority = 1000,
--    opts = {},
--  },

  -- Alpha
  {
    'goolord/alpha-nvim',
    lazy = true,
    config = function ()
      require'alpha'.setup(require'alpha.themes.dashboard'.config)
      --require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },

  -- Color scheme
  { 
    'rose-pine/neovim', 
    name = 'rose-pine' 
  },

  -- Auto pairing
  { 'windwp/nvim-autopairs', },

  -- auto tagging
  { "windwp/nvim-ts-autotag", },


  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
    enabled = true,
  },

  { "lukas-reineke/indent-blankline.nvim" },

  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  { 'numToStr/Comment.nvim', },
  { "kylechui/nvim-surround", },
  { "andweeb/presence.nvim", },
  { "karb94/neoscroll.nvim", },
  { 'phaazon/hop.nvim', branch = 'v2', },
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
  },





  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },

  -- Bufferline
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons'
  },

  -- File Explorer
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },

  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- File Search
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- Syntax highlighting
  {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },

	-- Cmp 
  { "hrsh7th/nvim-cmp", },                  -- The completion plugin
  { "hrsh7th/cmp-buffer", },                -- buffer completions
  { "hrsh7th/cmp-path", },                  -- path completions
	{ "saadparwaiz1/cmp_luasnip", },          -- snippet completions
	{ "hrsh7th/cmp-nvim-lsp", },
	{ "hrsh7th/cmp-nvim-lua", },

	-- Snippets
  { "L3MON4D3/LuaSnip", },                  --snippet engine
  { "rafamadriz/friendly-snippets", },      -- a bunch of snippets to use

	-- LSP
	{ "neovim/nvim-lspconfig", },             -- enable LSP
  { "williamboman/mason.nvim", },           -- simple to use language server installer
  { "williamboman/mason-lspconfig.nvim", },
	{ "jose-elias-alvarez/null-ls.nvim", },   -- for formatters and linters
  { "RRethy/vim-illuminate", },


}
