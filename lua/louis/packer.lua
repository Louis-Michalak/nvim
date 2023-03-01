vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use('wbthomason/packer.nvim')

	use({
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	})
	use({
    'folke/tokyonight.nvim',
		as = 'tokyonight',
		config = function()
			require("tokyonight").setup()
			vim.cmd('colorscheme tokyonight-moon')
		end
	})
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use("mbbill/undotree")
	use("tpope/vim-fugitive")
	use({
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {'williamboman/mason.nvim'},           -- Optional
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},         -- Required
	    {'hrsh7th/cmp-nvim-lsp'},     -- Required
	    {'hrsh7th/cmp-buffer'},       -- Optional
	    {'hrsh7th/cmp-path'},         -- Optional
	    {'saadparwaiz1/cmp_luasnip'}, -- Optional
	    {'hrsh7th/cmp-nvim-lua'},     -- Optional

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},             -- Required
	    {'rafamadriz/friendly-snippets'}, -- Optional
	  }
	})
  use("github/copilot.vim")
  use("lukas-reineke/indent-blankline.nvim")
  -- to configure
  -- use({"glepnir/dashboard-nvim", requires = { { "nvim-tree/nvim-web-devicons" } }, events = 'VimEnter' })
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'karb94/neoscroll.nvim'
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup()
    end
  }
  use 'm4xshen/autoclose.nvim'
  use({
    'neoclide/coc.nvim',
    branch = 'release',
  })
end)
