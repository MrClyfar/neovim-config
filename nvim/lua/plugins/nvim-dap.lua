return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
	  "nvim-neotest/nvim-nio"
    },
    config = function()
      local dap = require("dap")
      local dap_highlights = require("config.dap_ui_highlights")

      -- Set up highlight listeners
      dap.listeners.after.event_initialized["dap_ui_highlights"] = function()
        dap_highlights.set_debugger_highlights()
      end

      dap.listeners.before.event_terminated["dap_ui_highlights"] = function()
        dap_highlights.reset_debugger_highlights()
      end

      dap.listeners.before.event_exited["dap_ui_highlights"] = function()
        dap_highlights.reset_debugger_highlights()
      end
    end,
  },
}