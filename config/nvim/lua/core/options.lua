-- Basic editor options

local opt = vim.opt

-- Line numbering
opt.number = true
opt.relativenumber = true

-- Use spaces instead of tabs
opt.expandtab = true

-- Highlight current line
opt.cursorline = true

-- Enable filetype plugins
vim.cmd("filetype plugin on")

-- Spell check language
opt.spelllang = { "en_ca" }

-- Fuzzy file finding
opt.path:append("**")

-- Wild menu for completion
opt.wildmenu = true

-- Make shell interactive
vim.o.shellcmdflag = "-ic"

-- Enable syntax highlighting
vim.cmd("syntax enable")

-- Conceallevel (used with coc)
opt.conceallevel = 0

-- Colorscheme
vim.cmd("colorscheme slate")
