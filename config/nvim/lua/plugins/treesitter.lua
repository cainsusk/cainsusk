-- Treesitter configuration

require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "typescript", "javascript", "bash", "markdown", "markdown_inline", "json", "yaml", "vim", "python"
  },
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true },
})
