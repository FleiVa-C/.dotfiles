vim.cmd [[packadd packer.nvim]]
vim.o.termguicolors = true

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('savq/melange-nvim')
  use ({
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
  })
  use('catppuccin/nvim', {as = 'catppuccin'})
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use "nvim-lua/plenary.nvim"
  use{
      'theprimeagen/harpoon',
      branch = 'harpoon2',
      requires = { {"nvim-lua/plenary.nvim"} }
  }
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')
  use({
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      config = function()
          require("lsp_lines").setup()
      end,
  })
  use{
    'nvim-tree/nvim-tree.lua',
    requires ={
        'nvim-tree/nvim-web-devicons',
        },
    }
  use{
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use{
      'folke/noice.nvim',
      requires = { {'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify'} }
  }
  use('numToStr/Comment.nvim')
  use('windwp/nvim-autopairs')
  use('tpope/vim-sleuth')
  use("rcarriga/nvim-notify")
  use{
    "folke/noice.nvim",
    requires = { {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    } }
  }
  use{
    "folke/trouble.nvim",
    requires = { {"nvim-tree/nvim-web-devicons"} },
  }
end)

