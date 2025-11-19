-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Example of how to disable key bindings.
--vim.keymap.del("n", "t")
--vim.keymap.del("x", "t")
--vim.keymap.del("o", "t")

--vim.keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true, silent = true })

-- Mapping to close all floating windows that are associated with DAP.
vim.keymap.set("n", "<leader>dx", function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == "dap-float" then
      vim.api.nvim_win_close(win, true)
    end
  end
end, { desc = "DAP: close all float windows" })

-- Mapapingt to allow moving multiple lines of text up/down.
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })

-- Meow
vim.keymap.set("n", "<leader>yt", function()
  require("meow.yarn").open_tree("type_hierarchy", "supertypes")
end, { desc = "Yarn: Type Hierarchy (Super)" })
vim.keymap.set("n", "<leader>yT", function()
  require("meow.yarn").open_tree("type_hierarchy", "subtypes")
end, { desc = "Yarn: Type Hierarchy (Sub)" })
vim.keymap.set("n", "<leader>yc", function()
  require("meow.yarn").open_tree("call_hierarchy", "callers")
end, { desc = "Yarn: Call Hierarchy (Callers)" })
vim.keymap.set("n", "<leader>yC", function()
  require("meow.yarn").open_tree("call_hierarchy", "callees")
end, { desc = "Yarn: Call Hierarchy (Callees)" })

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

-- Toggle overlay
vim.keymap.set("n", "<leader>do", miniDiff.toggle_overlay, { noremap = true, desc = "Toggle diff overlay" })

-- Run golang tests
vim.keymap.set("n", "<leader>gtest", ':lua require("neotest").run.run()<CR>', { desc = "Run test" })

-- Oil.nvim keymaps
vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- ==== LSP Keymaps ====
vim.keymap.set("n", "<leader>th", function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end, { desc = "Toggle inlay hints" })
