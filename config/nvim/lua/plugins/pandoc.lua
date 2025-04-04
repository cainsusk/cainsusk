-- Pandoc markdown support

-- This plugin is mainly syntax highlighting.
-- Filetype is already set via autocmd in core/autocmds.lua

-- Optional settings:
vim.g["pandoc#syntax#conceal#use"] = 0
vim.g["pandoc#modules#disabled"] = { "folding" }  -- disables folding module if you don’t like it
