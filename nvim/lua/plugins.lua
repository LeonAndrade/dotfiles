 require("lazy").setup({

  -- Lua functions used by many plugins
  { "nvim-lua/plenary.nvim" },

  -- Powerful abstract syntax tree engine
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- Language Server Protocol configuration 
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

  -- Lint and Formatting
  {'nvimtools/none-ls.nvim'},

  -- Auto Completions
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/cmp-buffer'},
  {'hrsh7th/cmp-path'},
  {'hrsh7th/cmp-cmdline'},
  {'hrsh7th/cmp-nvim-lua'},

  -- Fuzzyfinder
  { "nvim-telescope/telescope.nvim", tag = "0.1.5", dependencies = { "nvim-lua/plenary.nvim" } },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

  -- Amazing undo plugin 
  {'mbbill/undotree'},

  -- Git Integration
  {'tpope/vim-fugitive'},
  {'lewis6991/gitsigns.nvim'},

  -- Nvim embedded terminal
  {'akinsho/toggleterm.nvim', version = "*", config = true},

  -- Window navigation
  {'yorickpeterse/nvim-window'},

  -- autoclosing tags
  {'windwp/nvim-autopairs'},

  -- Snippets
  {'L3MON4D3/LuaSnip'},
  {'saadparwaiz1/cmp_luasnip'},
  {'rafamadriz/friendly-snippets'},

  -- Quick comments with keybindings
  { "numToStr/Comment.nvim", lazy = false, },
  {'JoosepAlviste/nvim-ts-context-commentstring'},

  -- Colorscheme
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Nerdfont icons for status line and nvim tree
  { "nvim-tree/nvim-web-devicons" },

  -- Custom file explorer to replace netrw
  { "nvim-tree/nvim-tree.lua", version = "*", lazy = false, dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Customizable status bar 
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

  -- Zen mode
  {'folke/zen-mode.nvim'}
})
