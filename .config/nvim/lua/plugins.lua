local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  --  use {
  --    'svrana/neosolarized.nvim',
  --    requires = { 'tjdevries/colorbuddy.nvim' }
  --  }
  use 'ellisonleao/gruvbox.nvim'
  use 'luisiacc/gruvbox-baby'
  use 'hoob3rt/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities

  use 'onsails/lspkind-nvim' -- vscode like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'akinsho/bufferline.nvim', -- Tab
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }

  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'glepnir/lspsaga.nvim'
  use 'L3MON4D3/LuaSnip' -- Lsp Uis
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- git status for neovim
end)
