if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'

if has('nvim')
    "color theme
  "Plug 'morhetz/gruvbox'
  Plug 'luisiacc/gruvbox-baby', {'branch': 'main'}

  Plug 'bluz71/vim-moonfly-colors'
  Plug 'arcticicestudio/nord-vim'

  Plug 'windwp/nvim-autopairs'

  Plug 'neovim/nvim-lspconfig'
  Plug 'folke/lsp-colors.nvim'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  "Plug 'glepnir/lspsaga.nvim'
  Plug 'windwp/nvim-ts-autotag'

  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-path'
  Plug 'L3MON4D3/LuaSnip'
  "Plug 'saadparwaiz1/cmp_luasnip'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'onsails/lspkind-nvim'
  "Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'hoob3rt/lualine.nvim'
  "Plug 'kdheepak/tabline.nvim'

  Plug 'kyazdani42/nvim-web-devicons'
  "Plug 'kyazdani42/nvim-tree.lua'
  
  "Plug 'kristijanhusak/defx-git'
  "Plug 'kristijanhusak/defx-icons' 
  "Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'unkiwii/vim-nerdtree-sync'
  
  Plug 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
endif

call plug#end()
