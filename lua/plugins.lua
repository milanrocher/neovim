-- Remember to run PackerSync
return require('packer').startup(function(use)

  use ( 'wbthomason/packer.nvim' )
  use ( 'famiu/bufdelete.nvim' )
  use ( 'mbbill/undotree' )
  use ( 'eandrju/cellular-automaton.nvim' )
  use ( 'lervag/vimtex' )
  use ( 'sbdchd/neoformat' )
  use ( 'RRethy/vim-illuminate' )
  use ( 'nvim-tree/nvim-web-devicons' )
  use ( "windwp/nvim-autopairs" )
  use ( 'lukas-reineke/indent-blankline.nvim' )
  use ( 'numToStr/Comment.nvim' )
  use ( 'lewis6991/gitsigns.nvim' )
  use ( "folke/zen-mode.nvim" )
  use ( "folke/twilight.nvim" )
  use ( 'shaunsingh/nord.nvim' )
  use { 'catppuccin/nvim', as = 'catppuccin' }

  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
  }
  use {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
  }


  use {
    'sindrets/diffview.nvim',
    requires = 'nvim-lua/plenary.nvim'
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  use {
    'akinsho/bufferline.nvim',
    tag = "v3.*",
    requires = 'nvim-tree/nvim-web-devicons',
  }

  use {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    setup = function() 
      vim.g.mkdp_filetypes = { "markdown" } 
    end,
    ft = { "markdown" },
    }

  use {
    'nvim-tree/nvim-tree.lua',
    requires = 'nvim-tree/nvim-web-devicons',
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = 'nvim-lua/plenary.nvim',
  }

  use {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
  }

  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

end)
