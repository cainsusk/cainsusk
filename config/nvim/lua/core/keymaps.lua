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
inoremap `<tab> ``<Esc>i
]])

-- SEE plugins/lsp.lua FOR LSP RELATED KEYBINDS
