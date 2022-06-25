" Description: Keymaps
nnoremap x "_x

" Delete a word backwards
nnoremap dw vb"_d

" Open current directory
nmap te :tabedit
nmap <Tab> :tabnext<CR>
nmap <S-Tab> :tabprevious<CR>
nmap tn :tabnew <CR>
" nmap <silent> tt :tabnew <F3>

" Select all
nmap <C-a> gg<S-v>G

nmap <silent> <F3> :e. <CR>

nmap <silent> <S-F3> sv  :e. <CR>

" Split window
nmap <silent> ss :split<CR><C-w>w
nmap <silent> sv :vsplit<CR><C-w>w
" Move windo w
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l

" Move line
nnoremap <silent> <A-j> :m .+1<CR>==
nnoremap <silent> <A-k> :m .-2<CR>==
"inoremap <A-j> <Esc>:m .+1<CR>==gi
"inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Map Ctrl to esc
map <C-[> <Esc>
"noremap <silent> <space> :exe "normal i".nr2char(getchar())<CR>

"let g:user_emmet_leader_key=','
