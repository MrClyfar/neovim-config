return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      shell = { "C:\\Program Files\\Git\\bin\\bash.exe" },      
      win = {
        position = "float",
        -- width = 0.8,    -- optional
        -- height = 0.8,   -- optional
        border = "rounded", -- optional
      },
    },
    picker = {
      layout = {
        fullscreen = true, -- fullscreen for all pickers by default
      },
      sources = {
	    grep = {
		  hidden = true, -- Include hidden files in searches          
          case_sens = false, -- New! Define custom variable
          toggles = {
            case_sens = 's',
          }
		},
        explorer = {
          layout = { fullscreen = false }, -- override for explorer picker
        }
      },
    }, 
  },
}