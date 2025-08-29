return {
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      -- path to *project* interpreter or global python with debugpy.
      -- if you let Mason handle it, point to Mason’s venv:
      local mason_venv = vim.fn.stdpath("data")
        .. "/mason/packages/debugpy/venv/bin/python"

      require("dap-python").setup(mason_venv)      -- registers adapter + commands

      -- (optional) extra key-maps / settings
      --[[vim.keymap.set("n", "<leader>dn", function() require("dap-python").test_method() end,
        { desc = "Debug: nearest python test" }) --]]
    end,
  },
}