-- Autocommands

local api = vim.api

-- Pandoc syntax highlighting for markdown files
api.nvim_create_augroup("pandoc_syntax", { clear = true })
api.nvim_create_autocmd({ "BufNewFile", "BufFilePre", "BufRead" }, {
  group = "pandoc_syntax",
  pattern = "*.md",
  command = "set filetype=markdown.pandoc",
})

-- Alloy syntax highlighting (if using alloy.nvim or standalone)
api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.als",
  command = "setlocal filetype=alloy",
})
