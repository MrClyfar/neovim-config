-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
local dap_highlights = require("config.dap_ui_highlights")

-- Remove the auto-commenting of new lines, when already in a comment.
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("lazyvim_no_auto_comment", { clear = true }),
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "r", "o" })
  end,
})

-- syntax highlighting for dotenv files
vim.api.nvim_create_autocmd("BufRead", {
  group = vim.api.nvim_create_augroup("dotenv_ft", { clear = true }),
  pattern = { ".env", ".env.*" },
  callback = function()
    vim.bo.filetype = "dosini"
  end,
})

-- show cursorline only in active window enable
vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
  group = vim.api.nvim_create_augroup("active_cursorline", { clear = true }),
  callback = function()
    vim.opt_local.cursorline = true
  end,
})

-- show cursorline only in active window disable
-- vim.api.nvim_create_autocmd({ "WinLeave", "BufLeave" }, {
--   group = "active_cursorline",
--   callback = function()
--     vim.opt_local.cursorline = false
--   end,
-- })

local dap = require("dap")

dap.listeners.after.event_initialized["dap_ui_highlights"] = function()
  dap_highlights.set_debugger_highlights()
end

dap.listeners.before.event_terminated["dap_ui_highlights"] = function()
  dap_highlights.reset_debugger_highlights()
end

dap.listeners.before.event_exited["dap_ui_highlights"] = function()
  dap_highlights.reset_debugger_highlights()
end

