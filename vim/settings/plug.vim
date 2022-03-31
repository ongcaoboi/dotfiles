
" Plugins install

"
" Call folder Plugins
call plug#begin('~/AppData/Local/nvim/plugged')

  " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " Or build from source code by using yarn: https://yarnpkg.com
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


" File brower
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin' 				" Git status
    Plug 'ryanoasis/vim-devicons' 					" Icon
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'unkiwii/vim-nerdtree-sync' 


" Or Plug sippets
"  Plug 'chrisyue/my-snippets'

" c# lsp autocompletion-client-for-neovim
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'dense-analysis/ale'
    Plug 'Shougo/deoplete.nvim'
    Plug 'OrangeT/vim-csharp'

 " Terminal
    Plug 'voldikss/vim-floaterm' 					" Float terminal   

" fzf
    Plug 'junegunn/fzf' , { 'do': { -> fzf#install()}}
    Plug 'junegunn/fzf.vim'

" Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

" Auto pairs
    Plug 'jiangmiao/auto-pairs'

" Code syntax hight light
    Plug 'yuezk/vim-js'               
    Plug 'StanAngeloff/php.vim'
    Plug 'jwalton512/vim-blade'
    Plug 'jlcrochet/vim-cs'
" Source code version control 
    Plug 'tpope/vim-fugitive' 						" Git

" Auto rename tag html
    Plug 'AndrewRadev/tagalong.vim'

" Auto save 
"    Plug '907/vim-auto-save'
call plug#end()

