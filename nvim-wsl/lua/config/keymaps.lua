-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Toggle the inlay hints feature.
vim.keymap.set("n", "<leader>th", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })

-- ==== Copying file details to the clipboard ====
-- Copy full path to clipboard
vim.keymap.set("n", "<leader>cp", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
  print("Copied: " .. vim.fn.expand("%:p"))
end, { desc = "Copy file path to clipboard" })

-- Copy relative path to clipboard
vim.keymap.set("n", "<leader>cr", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
  print("Copied: " .. vim.fn.expand("%"))
end, { desc = "Copy relative path to clipboard" })

-- Copy just filename to clipboard
vim.keymap.set("n", "<leader>cf", function()
  vim.fn.setreg("+", vim.fn.expand("%:t"))
  print("Copied: " .. vim.fn.expand("%:t"))
end, { desc = "Copy filename to clipboard" })

-- Mini diff module
local miniDiff = require("mini.diff")

-- Set up key mappings after mini.diff is loaded
-- Navigate to next hunk
vim.keymap.set("n", "]h", function()
  miniDiff.goto_hunk("next")
end, { noremap = true, desc = "Next hunk" })

-- Navigate to previous hunk
vim.keymap.set("n", "[h", function()
  miniDiff.goto_hunk("prev")
end, { noremap = true, desc = "Previous hunk" })

-- Jump to first hunk
vim.keymap.set("n", "<leader>dH", function()
  miniDiff.goto_hunk("first")
end, { noremap = true, desc = "First hunk" })

-- Jump to last hunk
vim.keymap.set("n", "<leader>dL", function()
  miniDiff.goto_hunk("last")
end, { noremap = true, desc = "Last hunk" })

-- Toggle miniDiff overlay
vim.keymap.set("n", "<leader>do", miniDiff.toggle_overlay, { noremap = true, desc = "Toggle diff overlay" })

-- In your init.lua or init.vim
vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { desc = 'Show signature help' })
