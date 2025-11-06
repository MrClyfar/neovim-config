-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("core.lsp")

--vim.cmd.colorscheme("gruvdark")
--vim.cmd("let g:gruvdark_transparent_bg = 1")

-- Nanocode theme.
-- vim.cmd("colorscheme nanode")
-- vim.cmd("let g:nanode_transparent_bg = 1")
--
-- vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#6f6f6f" })
-- vim.api.nvim_set_hl(0, "CursorLine", { fg = "#ffff00", bg = "#6f6f6f" })

-- Nightgem theme.
-- vim.cmd("colorscheme nightgem")
-- vim.cmd("let g:nightgem_transparent_bg = 1")

-- Tokyonight theme.
vim.cmd("colorscheme tokyonight-night")
-- vim.cmd("let g:tokyonight-night_transparent_bg = 1")

-- y9nika This is currently my favorite theme.
-- y9nika
-- vim.cmd("colorscheme y9nika")
-- vim.cmd("let g:y9nika_transparent_bg = 1")

-- Alabaster
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     vim.api.nvim_set_hl(0, "@function", {
--       fg = "#fbffc5",
--       -- fg = "#ffec00",
--     })
--
--     vim.api.nvim_set_hl(0, "Comment", {
--       fg = "#f3adff",
--       -- fg = "#ca75f2",
--     })
--
--     vim.api.nvim_set_hl(0, "@variable", {
--       fg = "#86b1ff",
--       -- fg = "#4b92f3",
--     })
--
--     vim.api.nvim_set_hl(0, "Number", {
--       fg = "#9de253",
--     })
--   end,
-- })
--
-- vim.cmd("colorscheme alabaster")
-- vim.cmd("let g:alabaster_transparent_bg = 1")

-- Matteblack theme.
-- vim.cmd("colorscheme matteblack")
-- vim.cmd("let g:matteblack_transparent_bg = 1")

-- Conifer theme.
-- vim.cmd("colorscheme conifer")
-- vim.cmd("let g:conifer_transparent_bg = 1")
--
-- vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#6f6f6f" })
-- vim.api.nvim_set_hl(0, "CursorLine", { fg = "#ffff00", bg = "#6f6f6f" })
--
-- kanagawa theme
-- vim.cmd("colorscheme kanagawa")
-- vim.cmd("let g:kanagawa_transparent_bg = 1")

-- Nordfox theme
--vim.cmd("colorscheme nordfox")
--vim.cmd("let g:nordfox_transparent_bg = 1")

-- Dayfox theme
-- vim.cmd("colorscheme dayfox")
-- vim.cmd("let g:dayfox_transparent_bg = 1")

--vim.cmd.colorscheme('naysayer')
--vim.cmd("let g:naysayer_transparent_bg = 1")

--vim.cmd("colorscheme nightfox")
--vim.cmd("let g:nightfox_transparent_bg = 1")

--vim.cmd("colorscheme jellybeans")
--vim.cmd("let g:jellybeans_transparent_bg = 1")

--vim.cmd("colorscheme jellybeans")
-- vim.cmd("colorscheme jellybeans-muted-light")

-- vim.cmd("let g:jellybeans_transparent_bg = 1")

-- This might comei n handy when v0.12 is released. Set the popup background.
vim.cmd("autocmd VimEnter * hi Pmenu guibg=bg")

vim.cmd("autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE")

vim.cmd("autocmd VimEnter * hi NormalNC ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi EndOfBuffer ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi SignColumn ctermbg=NONE guibg=NONE")
vim.cmd("autocmd VimEnter * hi NormalFloat ctermbg=NONE guibg=NONE")

--vim.lsp.inline_completion.enable(true)

-- Configure debugging support.
local dap = require("dap")
local dapui = require("dapui")

require("dap").adapters["pwa-node"] = {
  type = "server",
  --host = "127.0.0.1",
  host = "::1",
  port = 8000,
  executable = {
    command = "node",
    -- 💀 Make sure to update this path to point to your installation
    args = { "C:\\Users\\JasonEvans\\Downloads\\js-debug-dap-v1.102.0\\js-debug\\src\\dapDebugServer.js", "8000" },
  },
}

require("dap").configurations.typescript = {
  {
    type = "pwa-node",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    cwd = "${workspaceFolder}",
  },
}

-- full path to the interpreter where you ran: pip install debugpy
-- local python = "C:\\Users\\JasonEvans\\AppData\\Local\\Programs\\Python\\Python313\\python.exe"

-- Se my note about nvim-dap-python in options.lua
-- require("dap-python").setup(python)

--[[
dap.configurations.typescript = {
  {
    type = 'pwa-node',
    request = 'launch',
    name = 'Launch file',
    program = '${file}',
    cwd = '${workspaceFolder}',
    sourceMaps = true,
	host = "localhost",
    port = "1234",
    protocol = 'inspector',
    console = 'integratedTerminal',
    runtimeExecutable = 'node',
	  executable = {
      command = "node",
      -- 💀 Make sure to update this path to point to your installation
      args = {"C:\\Users\\JasonEvans\\Downloads\\js-debug-dap-v1.102.0\\js-debug", "1234"},
    },
    runtimeArgs = {
      '--loader',
      'ts-node/esm',
      '--experimental-specifier-resolution=node'
    },
    skipFiles = {
      '<node_internals>/**',
      'node_modules/**',
    },
  },
}--]]

dapui.setup({
  icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
  controls = {
    icons = {
      pause = "⏸",
      play = "▶",
      step_into = "⏎",
      step_over = "⏭",
      step_out = "⏮",
      step_back = "b",
      run_last = "▶▶",
      terminate = "⏹",
      disconnect = "⏏",
    },
  },
})

dap.listeners.after.event_initialized["dapui_config"] = dapui.open
dap.listeners.before.event_terminated["dapui_config"] = dapui.close
dap.listeners.before.event_exited["dapui_config"] = dapui.close

local map = function(keys, func, desc)
  if desc then
    desc = "[D]ebugger: " .. desc
  end
  if keys then
    keys = "<leader>d" .. keys
  end
  vim.keymap.set("n", keys, func, { desc = desc })
end

map("c", dap.continue, "[C]ontinue")
-- TODO: is this really needed?
-- map("a", function()
--   require("dap").continue({ before = get_args })
-- end, "Run with [A]rgs")
map("i", dap.step_into, "Step [I]nto")
map("O", dap.step_out, "Step [O]ut")
map("o", dap.step_over, "Step Over")
map("C", function()
  require("dap").run_to_cursor()
end, "Run to [C]ursor")
map("g", function()
  require("dap").goto_()
end, "[G]o to line (no execute)")
map("b", dap.toggle_breakpoint, "Toggle [B]reakpoint")
map("B", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, "Set [B]reakpoint")
map("j", dap.down, "Down")
map("k", dap.up, "Up")
map("l", dap.run_last, "Run [L]ast")
map("p", dap.pause, "Pause")
map("r", function()
  dap.repl.toggle()
end, "Toggle REPL")
map("s", dap.session, "Session")
map("t", dap.terminate, "Terminate")
map("w", function()
  require("dap.ui.widgets").hover()
end, "Widgets")

map("u", function()
  dapui.toggle({
    -- Always open the nvim dap ui in the default sizes
    reset = true,
  })
end, "Toggle [U]I")
map("e", function()
  dapui.eval()
end, "Eval")

vim.api.nvim_set_keymap("n", "<F5>", [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })

-- Configure the colouring for mini.nvim "diff" module.
vim.api.nvim_set_hl(0, "MiniDiffOverAdd", { bg = "#2d5016", fg = "NONE" })
vim.api.nvim_set_hl(0, "MiniDiffOverDelete", { bg = "#5c1a1a", fg = "NONE" })
vim.api.nvim_set_hl(0, "MiniDiffOverContext", { bg = "#1a3a52", fg = "NONE" })
vim.api.nvim_set_hl(0, "MiniDiffOverChangeLine", { bg = "#3a3a1a", fg = "NONE" })

-- Link mini.diff highlight groups to your theme's colors
-- vim.api.nvim_set_hl(0, "MiniDiffOverAdd", { link = "DiffAdd" })
-- vim.api.nvim_set_hl(0, "MiniDiffOverDelete", { link = "DiffDelete" })
-- vim.api.nvim_set_hl(0, "MiniDiffOverContext", { link = "DiffChange" })
-- vim.api.nvim_set_hl(0, "MiniDiffOverChangeLine", { link = "DiffChange" })
--
-- vim.api.nvim_set_hl(0, "MiniDiffSignAdd", { link = "DiffAdd" })
-- vim.api.nvim_set_hl(0, "MiniDiffSignChange", { link = "DiffChange" })
-- vim.api.nvim_set_hl(0, "MiniDiffSignDelete", { link = "DiffDelete" })
