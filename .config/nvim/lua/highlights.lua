vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.winblend = 0
vim.opt.wildoptions = 'pum'
vim.opt.pumblend = 5
vim.opt.background = 'dark'

vim.cmd [[
  hi Normal ctermbg=NONE guibg=NONE
  hi SignColumn ctermbg=NONE guibg=NONE 
"  hi NormalNC ctermbg=NONE guibg=NONE
"  hi Comment ctermbg=NONE guibg=NONE
"  hi Constant ctermbg=NONE guibg=NONE
"  hi Special ctermbg=NONE guibg=NONE
"  hi Identifier ctermbg=NONE guibg=NONE
"  hi Statement ctermbg=NONE guibg=NONE
"  hi PreProc ctermbg=NONE guibg=NONE
"  hi Type ctermbg=NONE guibg=NONE
"  hi Underlined ctermbg=NONE guibg=NONE
"  hi Todo ctermbg=NONE guibg=NONE
"  hi String ctermbg=NONE guibg=NONE
"  hi Function ctermbg=NONE guibg=NONE
"  hi Conditional ctermbg=NONE guibg=NONE
"  hi Repeat ctermbg=NONE guibg=NONE
"  hi Operator ctermbg=NONE guibg=NONE
"  hi Structure ctermbg=NONE guibg=NONE
"  hi LineNr ctermbg=NONE guibg=NONE
"  hi NonText ctermbg=NONE guibg=NONE
"  hi CursorLineNr ctermbg=NONE guibg=NONE
"  hi EndOfBuffer ctermbg=NONE guibg=NONE
]]

vim.cmd("colorscheme gruvbox-baby")
