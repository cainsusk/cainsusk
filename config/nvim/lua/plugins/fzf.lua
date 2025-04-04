-- FZF configuration

-- Use :Files, :GFiles, etc.
-- Minimal config required if fzf is installed correctly.

-- Optional: Set layout to fullscreen
vim.g.fzf_layout = { window = { width = 1, height = 1 } }

-- Optional: Use bat for preview if installed
vim.g.fzf_preview_command = "bat --style=numbers --color=always {} || cat {}"
