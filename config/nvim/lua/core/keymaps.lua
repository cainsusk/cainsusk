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

-- Search for file and open in new tab
map("n", "F<CR>", ":ftab ", opts)

-- Open config in new tab
vim.api.nvim_create_user_command("Conf", function()
  vim.cmd("tabe ~/.config/nvim/init.lua")
end, {})

-- Coc key mappings (coc.nvim plugin)
map("n", "\\F", "<Plug>(coc-codeaction-refactor-selected)", {})
map("n", "\\e", "<Plug>(coc-diagnostic-next)", {})
map("n", "\\r", "<Plug>(coc-references)", {})
map("n", "\\R", "<Plug>(coc-rename)", {})
map("n", "\\t", "<Plug>(coc-type-definition)", {})
map("n", "\\d", "<Plug>(coc-definition)", {})
map("n", "\\f", "<Plug>(coc-format)", {})

-- Show documentation function
vim.api.nvim_set_keymap("n", "\\q", ":call ShowDocumentation()<CR>", { noremap = true, silent = true })
vim.cmd([[
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('definitionHover')
  else
    call feedkeys('\q', 'in')
  endif
endfunction
]])
