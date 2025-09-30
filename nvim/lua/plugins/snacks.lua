return {
  "folke/snacks.nvim",  
  opts = {
    styles = {
      notification = {
        border = "rounded",
        wo = {
          winblend = 0,
		}
      },
    },
    terminal = {
      shell = { "C:\\Program Files\\Git\\bin\\bash.exe" },      
      win = {
        --position = "float",
		position = "bottom",
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
	    files = {
          hidden = true,      -- show dot-files
          ignored = false,     -- show Git-ignored files
        },
	    grep = {		
          ignored = false,
		  hidden = true, -- Include hidden files in searches          
          case_sens = false, -- New! Define custom variable
          toggles = {
            case_sens = 's',
          }
		},
        explorer = {
          layout = { fullscreen = false }, -- override for explorer picker
        },
		-- Config settings for the notifications window.
		notifications = {
          win = {
            wo = {
              wrap = true,
            },
          },
        },
      },
    }, 
  },
}