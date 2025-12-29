-- Cain Susko — Neovim Config in Lua (2025)

-- Core Config
require("core.options")
require("core.keymaps")
require("core.autocmd")
require("core.plugins")
require("core.modes")

-- Plugin Configs
require("plugins.lsp")        -- Native LSP & mason
require("plugins.cmp")        -- Autocompletion with nvim-cmp
require("plugins.treesitter") -- Treesitter highlighting
require("plugins.fzf")        -- Fuzzy finder
require("plugins.pandoc")     -- Pandoc markdown support

-- Open config in new tab
vim.api.nvim_create_user_command("Conf", function()
  vim.cmd("tabe ~/.config/nvim/")
end, {})
