-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("core.lsp")

vim.cmd("colorscheme kanagawa")

vim.cmd("let g:kanagawa_transparent_bg = 1")

--vim.cmd("colorscheme nordfox")
--vim.cmd("let g:nordfox_transparent_bg = 1")

vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")