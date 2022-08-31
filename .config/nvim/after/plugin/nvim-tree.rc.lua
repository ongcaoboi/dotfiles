local status, nvim_tree = pcall(require, "nvim-tree")
if (not status) then return end

nvim_tree.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        -- { key = "u", action = "dir_up" },
        { key = 's', action = "" },
        { key = '<C-p>', action = 'preview' }
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})

vim.cmd [[ 
  nnoremap <silent>tt :NvimTreeToggle<CR>
]]
