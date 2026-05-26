return {
  "folke/snacks.nvim",
  opts = {
    styles = {
      notification = {
        border = "rounded",
        wo = {
          winblend = 0,
        },
      },
    },
    picker = {
      layout = {
        fullscreen = true, -- fullscreen for all pickers by default
      },
      sources = {
        grep = {
          ignored = false,
          hidden = true,     -- Include hidden files in searches
          case_sens = false, -- New! Define custom variable
          toggles = {
            case_sens = "s",
          },
        },
        files = {
          hidden = true,  -- show dot-files
          ignored = true, -- show Git-ignored files
        },
        explorer = {
          hidden = true,                   -- show dot-files
          ignored = true,                  -- show Git-ignored files
          layout = { fullscreen = false }, -- override for explorer picker
          focus_current_file = false,
          follow = false,
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
