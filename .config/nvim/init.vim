" Basic {
" ----------------------------------------

autocmd!

scriptencoding utf-8

set nocompatible
set hlsearch
set number
set encoding=utf-8
set title
set ignorecase
set nowrap
set mouse=a
set scrolloff=10

if has('nvim')
  set inccommand=split
endif

set autoindent
set smarttab
set expandtab

set shell=fish

" Disable backup
set nobackup
set nowb
set noswapfile
syntax on

filetype plugin indent on
set tabstop=2
set shiftwidth=2

" Enable copying from vim to clipboard
if has('win32')
	set clipboard=unnamed  
else
	set clipboard=unnamedplus
endif

" Auto reload content changed outside
au CursorHold,CursorHoldI * checktime
au FocusGained,BufEnter * :checktime
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
		\ if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == ''
			\ | checktime 
		\ | endif
autocmd FileChangedShellPost *
		\ echohl WarningMsg 
		\ | echo "File changed on disk. Buffer reloaded."
		\ | echohl None

" }


" Imports {
" ----------------------------------------

runtime ./plug.vim

runtime ./maps.vim

" }

" {

" }

" Syntax theme {
" ----------------------------------------

set termguicolors
syntax enable
set background=dark
colorscheme gruvbox
set cursorline

let g:airline_theme='gruvbox'

hi Normal ctermbg=NONE guibg=NONE

" }


" Orther {

set exrc


" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" }
