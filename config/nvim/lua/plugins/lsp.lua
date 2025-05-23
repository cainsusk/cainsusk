vim.g.mapleader = "\\"

-- capabilities (optional: if you're using nvim-cmp)
local capabilities = vim.lsp.protocol.make_client_capabilities()
-- Uncomment if you're using cmp-nvim-lsp
-- capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- Shared on_attach function with common keymaps
local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local map = vim.keymap.set

  -- LSP keymaps
  map("n", "<leader>d", vim.lsp.buf.definition, opts)
  map("n", "<leader>D", vim.lsp.buf.declaration, opts)
  map("n", "<leader>i", vim.lsp.buf.implementation, opts)
  map("n", "<leader>r", vim.lsp.buf.references, opts)
  map("n", "<leader>q", vim.lsp.buf.hover, opts)
  map("n", "<leader>R", vim.lsp.buf.rename, opts)
  map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
  map("n", "<leader>e", vim.diagnostic.open_float, opts)
  map("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

-- Setup mason and mason-lspconfig
require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "lua_ls", "ts_ls" },
  automatic_installation = true,
})

-- LSP handler setup
require("mason-lspconfig").setup_handlers({
  -- Default setup for all servers
  function(server_name)
    require("lspconfig")[server_name].setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end
})
