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
  map("n", "<leader>e", vim.diagnostic.goto_next, opts)
  map("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

-- Setup mason and mason-lspconfig
require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "lua_ls", "ts_ls", "biome" },
  automatic_installation = true,
  on_attach = on_attach,
})

-- Overrides for ensuring typescript-language-server and biome do not clash
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("MyLspOverrides", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    -- Reuse your existing keymaps function if you want it applied universally:
    -- (Assumes you defined: local on_attach = function(client, bufnr) ... end )
    if type(on_attach) == "function" then
      pcall(on_attach, client, args.buf)
    end

    -- 2) Per-server formatting capability tweaks
    if client.name == "biome" then
      client.server_capabilities.documentFormattingProvider = true
    end
    if client.name == "ts_ls" or client.name == "tsserver" then
      client.server_capabilities.documentFormattingProvider = false
    end
  end,
})
