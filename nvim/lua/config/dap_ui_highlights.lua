-- Define the highlight groups for when the debugger is active.
local set_debugger_highlights = function()
  -- The highlight group for the active statusline
  vim.api.nvim_set_hl(0, 'StatusLine', { fg = '#ffffff', bg = '#ff0000', bold = true })
  -- The highlight group for the active tab in the tabline
  vim.api.nvim_set_hl(0, 'TabLineSel', { fg = '#ffffff', bg = '#ff0000', bold = true })
  -- The highlight group for the line number in the current line
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ff0000', bold = true })
end

-- Define the highlight groups to reset the colors to a default theme.
local reset_debugger_highlights = function()
  -- Set back to your theme's default colors.
  -- You can use `vim.api.nvim_get_hl` to get the default,
  -- or simply set a known color from your theme (e.g., kanagawa).
  vim.api.nvim_set_hl(0, 'StatusLine', { link = 'StatusLine' })
  vim.api.nvim_set_hl(0, 'TabLineSel', { link = 'TabLineSel' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { link = 'CursorLineNr' })
end

return {
  set_debugger_highlights = set_debugger_highlights,
  reset_debugger_highlights = reset_debugger_highlights,
}