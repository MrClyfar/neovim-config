-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("core.lsp")

-- ==== Theme Settings ==== --

-- kanagawa theme
vim.cmd("let g:kanagawa_transparent_bg = 1")
vim.cmd("colorscheme kanagawa")

-- y9nika This is currently my favorite theme.
-- vim.cmd("let g:y9nika_transparent_bg = 1")
-- vim.cmd("colorscheme y9nika")
