-- Native LSP configuration

-- Setup Mason (LSP installer)
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "ts_ls", "bashls", "marksman" },
})

-- Setup LSP servers with default config
local lspconfig = require("lspconfig")

-- You can add more servers here
local servers = { "lua_ls", "ts_ls", "bashls", "marksman" }

for _, server in ipairs(servers) do
  lspconfig[server].setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities()
  })
end
