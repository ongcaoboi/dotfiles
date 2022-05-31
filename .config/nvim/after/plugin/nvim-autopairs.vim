lua <<EOF
local status, lualine = pcall(require, 'nvim-autopairs')
if (not status) then return end

require('nvim-autopairs').setup{

}
EOF
