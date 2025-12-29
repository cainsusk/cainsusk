-- Plugin setup using lazy.nvim

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Essential
  { "preservim/nerdtree" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-commentary" },
  { "tpope/vim-sleuth" },
  { "tpope/vim-surround" },
  { "junegunn/fzf" },

  -- Language Server Protocol
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  -- Optional
  { "vim-pandoc/vim-pandoc-syntax" },
  -- { "erooke/alloy.nvim" },
})
