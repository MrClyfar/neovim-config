-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local dap_highlights = require('config.dap_ui_highlights')

-- Remove the auto-commenting of new lines, when already in a comment.
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("lazyvim_no_auto_comment", { clear = true }),
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

local dap = require('dap')

dap.listeners.after.event_initialized["dap_ui_highlights"] = function()
  dap_highlights.set_debugger_highlights()
end

dap.listeners.before.event_terminated["dap_ui_highlights"] = function()
  dap_highlights.reset_debugger_highlights()
end

dap.listeners.before.event_exited["dap_ui_highlights"] = function()
  dap_highlights.reset_debugger_highlights()
end