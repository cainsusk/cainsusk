-- user/modes.lua
-- Custom user-defined modes (like Word Processor Mode)

local M = {}

-- Enable Word Processor Mode
function M.enable_wp_mode()
  vim.opt_local.textwidth = 80
  vim.opt_local.spell = true
  vim.opt_local.number = false
  vim.notify("Word Processor Mode: Enabled", vim.log.levels.INFO)
end

-- Disable Word Processor Mode
function M.disable_wp_mode()
  vim.opt_local.textwidth = 0
  vim.opt_local.spell = false
  vim.opt_local.number = true
  vim.notify("Word Processor Mode: Disabled", vim.log.levels.INFO)
end

-- Register as commands
vim.api.nvim_create_user_command("WPgo", M.enable_wp_mode, {
  desc = "Enable Word Processor Mode"
})
vim.api.nvim_create_user_command("WPno", M.disable_wp_mode, {
  desc = "Disable Word Processor Mode"
})

return M
