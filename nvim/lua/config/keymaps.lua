-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Example of how to disable key bindings.
--vim.keymap.del("n", "t")
--vim.keymap.del("x", "t")
--vim.keymap.del("o", "t")

--vim.keymap('n', '<F8>', ':TagbarToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>dx', function()
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.bo[buf].filetype == 'dap-float' then
      vim.api.nvim_win_close(win, true)
    end
  end
end, { desc = "DAP: close all float windows" })
