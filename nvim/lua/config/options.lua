-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("hi NonText guibg=NONE ctermbg=NONE")

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.visualbell = true
vim.opt.clipboard = "unnamedplus"

vim.opt.incsearch = true -- make search act like search in modern browsers

vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menu", "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files

vim.opt.fileencoding = "utf-8" -- the encoding written to a file

vim.opt.hlsearch = true -- highlight all matches on previous search pattern

vim.opt.pumheight = 10 -- pop up menu height

vim.opt.showtabline = 0 -- always show tabs

vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window

vim.opt.updatetime = 100 -- faster completion (4000ms default)

-- Highlight the current line.
vim.opt.cursorline = true

-- Highlight the current column.
vim.opt.cursorcolumn = true

--vim.opt.shiftwidth = 2                                  -- the number of spaces inserted for each indentation

vim.opt.scrolloff = 10
-- vim.opt.sidescrolloff = 8                               -- Makes sure there are always eight lines of context

-- vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications

--vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Enable code lenses
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "InsertLeave" }, {
  pattern = "*.go",
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})
