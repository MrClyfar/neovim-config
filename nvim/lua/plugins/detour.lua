-- https://github.com/carbon-steel/detour.nvim
return {
  "carbon-steel/detour.nvim",  
  config = function()
      --require("detour").setup({
            -- Put custom configuration here
      --})
	  
    vim.keymap.set('n', '<c-w><enter>', ":Detour<cr>")
    vim.keymap.set('n', '<c-w>.', ":DetourCurrentWindow<cr>")
	
	local detour_moves = require("detour.movements")
    -- NOTE: While using `detour_moves` is not required to use this
    -- plugin, it is strongly recommended as it makes window navigation
    -- much more intuitive.
    --
    -- The following keymaps are drop in replacements for Vim's regular
    -- window navigation commands. These replacements allows you to
    -- skip over windows covered by detours (which is a much more
    -- intuitive motion) but are otherwise the same as normal window
    -- navigation.
    --
    -- This is an example set of keymaps, but if you use other keys to
    -- navigate windows, changes these keymaps to suit your situation.
    vim.keymap.set({ "n", "t" }, "<C-j>", detour_moves.DetourWinCmdJ)
    vim.keymap.set({ "n", "t" }, "<C-w>j", detour_moves.DetourWinCmdJ)
    vim.keymap.set({ "n", "t" }, "<C-w><C-j>", detour_moves.DetourWinCmdJ)
    
    vim.keymap.set({ "n", "t" }, "<C-h>", detour_moves.DetourWinCmdH)
    vim.keymap.set({ "n", "t" }, "<C-w>h", detour_moves.DetourWinCmdH)
    vim.keymap.set({ "n", "t" }, "<C-w><C-h>", detour_moves.DetourWinCmdH)
    
    vim.keymap.set({ "n", "t" }, "<C-k>", detour_moves.DetourWinCmdK)
    vim.keymap.set({ "n", "t" }, "<C-w>k", detour_moves.DetourWinCmdK)
    vim.keymap.set({ "n", "t" }, "<C-w><C-k>", detour_moves.DetourWinCmdK)
    
    vim.keymap.set({ "n", "t" }, "<C-l>", detour_moves.DetourWinCmdL)
    vim.keymap.set({ "n", "t" }, "<C-w>l", detour_moves.DetourWinCmdL)
    vim.keymap.set({ "n", "t" }, "<C-w><C-l>", detour_moves.DetourWinCmdL)
    
    vim.keymap.set({ "n", "t" }, "<C-w>w", detour_moves.DetourWinCmdW)
    vim.keymap.set({ "n", "t" }, "<C-w><C-w>", detour_moves.DetourWinCmdW)	

    vim.keymap.set("n", "<leader>gd", function()
	  -- Open detour with the same buffer
	  if not require("detour").Detour() then
		return
	  end
	  vim.lsp.buf.definition() -- jump to definition
    end)	
  end,
}