local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Increament/decreament
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a work backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- New tab
keymap.set('n', 'te', ':tabedit<CR>')
keymap.set('n', 'tn', ':tabnew<CR>')

-- Next tab
keymap.set('n', '<Tab>', ':tabnext<CR>')

-- Previous tab
keymap.set('n', '<S-Tab>', ':tabprevious<CR>')

-- Split window
keymap.set('n', 'ss', ':split<CR><C-w>w')
keymap.set('n', 'sv', ':vsplit<CR><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Move line
keymap.set('n', '<A-j>', ':m .+1<CR>==')
keymap.set('n', '<A-k>', ':m .-2<CR>==')
keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")
