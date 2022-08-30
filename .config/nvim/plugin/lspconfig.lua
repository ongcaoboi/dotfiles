local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

local protocol = require('vim.lsp.protocol')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings
  local opts = { noremap = true, silent = true }
  -- Displays hover information about the symbol under the cursor
  -- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)

  -- Jump to the definition
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)

  -- Jump to declaration
  -- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)

  -- Lists all the implementations for the symbol under the cursor
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)

  -- Jumps to the definition of the type symbol
  -- buf_set_keymap('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

  -- Lists all the references
  -- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)

  -- Displays a function's signature information
  -- buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

  -- Renames all references to the symbol under the cursor
  -- buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)

  -- Selects a code action available at the current cursor position
  -- buf_set_keymap('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  -- buf_set_keymap('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>', opts)

  -- Show diagnostics in a floating window
  -- buf_set_keymap('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)

  -- Move to the previous diagnostic
  -- buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)

  -- Move to the next diagnostic
  -- buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)

  -- Formatting
  if client.server_capabilities.documentFormattingProvider then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end
end

-- Set up completion using nvim_cmp with LSP source
local capabilities = require('cmp_nvim_lsp').update_capabilities(
  protocol.make_client_capabilities()
)

local lsp_defaults = {
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = capabilities,
  on_attach = on_attach
}

nvim_lsp.util.default_config = vim.tbl_deep_extend(
  'force',
  nvim_lsp.util.default_config,
  lsp_defaults
)

-- Config js, ts

nvim_lsp.tsserver.setup {
  filetypes = {
    'javascript',
    'javascriptreact',
    'javascript.jsx',
    'typescript',
    'typescriptreact',
    'typescript.tsx'
  },
}

-- Config lua language
nvim_lsp.sumneko_lua.setup {
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' },
      },

      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
    },
  },
}

nvim_lsp.tailwindcss.setup {}

nvim_lsp.emmet_ls.setup {}

nvim_lsp.html.setup {}

nvim_lsp.cssls.setup {}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
  underline = true,
  update_in_insert = false,
  virtual_text = { spacing = 4, prefix = "●" },
  severity_sort = true,
}
)

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
