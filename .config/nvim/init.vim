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

syntax enable
set termguicolors
set background=dark
set cursorline

colorscheme gruvbox-baby

" Orther {

set exrc


" Disable automatic comment in newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" }

" Set background transparent
hi Normal ctermbg=NONE guibg=NONE
hi  SignColumn ctermbg=NONE guibg=NONE 
hi  NormalNC ctermbg=NONE guibg=NONE
hi  Comment ctermbg=NONE guibg=NONE
hi  Constant ctermbg=NONE guibg=NONE
hi  Special ctermbg=NONE guibg=NONE
hi  Identifier ctermbg=NONE guibg=NONE
hi  Statement ctermbg=NONE guibg=NONE
hi  PreProc ctermbg=NONE guibg=NONE
hi  Type ctermbg=NONE guibg=NONE
hi  Underlined ctermbg=NONE guibg=NONE
hi  Todo ctermbg=NONE guibg=NONE
hi  String ctermbg=NONE guibg=NONE
hi  Function ctermbg=NONE guibg=NONE
hi  Conditional ctermbg=NONE guibg=NONE
hi  Repeat ctermbg=NONE guibg=NONE
hi  Operator ctermbg=NONE guibg=NONE
hi  Structure ctermbg=NONE guibg=NONE
hi  LineNr ctermbg=NONE guibg=NONE
hi  NonText ctermbg=NONE guibg=NONE
hi  CursorLineNr ctermbg=NONE guibg=NONE
hi  EndOfBuffer ctermbg=NONE guibg=NONE
" }
