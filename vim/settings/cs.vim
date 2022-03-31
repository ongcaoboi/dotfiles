
    let g:OmniSharp_sever_stdio = 1
    let g:OmniSharp_server_use_net6 = 1

" function SetCSSettings()

    " Use deoplete.
"    call deoplete#enable()

    " Use smartcase.
"    call deoplete#custom#option('smart_case', v:true)

    " Use OmniSharp-vim omnifunc 
"    call deoplete#custom#source('omni', 'functions', { 'cs':  'OmniSharp#Complete' })

    " Set how Deoplete filters omnifunc output.
"    call deoplete#custom#var('omni', 'input_patterns', {
"        \ 'cs': '[^. *\t]\.\w*',
"        \})

    " ... then goes your mappings for :OmniSharp* functions, see its doc
"endfunction

"augroup csharp_commands
"    autocmd!

    " Use smartcase.
    " call deoplete#custom#option('smart_case', v:true) 
"    autocmd FileType cs call SetCSSettings()

"augroup END
