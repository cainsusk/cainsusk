-- Keymaps

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Insert mode bracket/tab pairs
vim.cmd([[
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko
inoremap [<tab> []<Esc>i
inoremap (<tab> ()<Esc>i
inoremap {<tab> {}<Esc>i
inoremap <<tab> <><Esc>i
inoremap "<tab> ""<Esc>i
inoremap '<tab> ''<Esc>i
inoremap $<tab> $$<Esc>i
]])

-- Open config in new tab
vim.api.nvim_create_user_command("Conf", function()
  vim.cmd("tabe ~/.config/nvim/init.lua")
end, {})

-- Mason & built-in LSP key mappings
-- These assume you are using Mason for LSP server installation + nvim-lspconfig for LSP setup.
-- Make sure you have your LSP on_attach use these mappings, or set them globally as below.

-- Go to definition
map("n", "\\d", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- Show references
map("n", "\\r", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
-- Rename symbol
map("n", "\\R", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
-- Go to type definition
map("n", "\\t", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
-- Format document
map("n", "\\f", "<cmd>lua vim.lsp.buf.format({ async = true })<CR>", opts)
-- Show hover documentation (like ShowDocumentation from coc)
map("n", "\\q", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
-- Go to next diagnostic
map("n", "\\e", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
-- [Optional] Code action (refactor, quickfix, etc)
map("n", "\\F", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)

