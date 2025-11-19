return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>T.",
      function()
        -- Can implement your own logic for saving files by cwd, project, git branch, etc.
        local data = vim.fn.stdpath("data")
        local root = data .. "/snacks/todo"
        vim.fn.mkdir(root, "p")
        local file = root .. "/todo.md" -- IMPORTANT: must match checkmate `files` pattern

        ---@diagnostic disable-next-line: missing-fields
        Snacks.scratch.open({
          ft = "markdown",
          file = file,
        })
      end,
      desc = "Toggle Scratch Todo",
    },
  },
  opts = {
    gh = {
      -- your gh configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    styles = {
      notification = {
        border = "rounded",
        wo = {
          winblend = 0,
        },
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
      layouts = {
        ivy_preview_top = {
          preview = "main",
          layout = {
            box = "vertical",
            backdrop = false,
            width = 0,
            height = 0.4,
            position = "bottom",
            border = "top",
            title = " {title} {live} {flags}",
            title_pos = "left",
            { win = "input", height = 1, border = "bottom" },
            {
              box = "horizontal",
              { win = "list", border = "none" },
              { win = "preview", title = "{preview}", width = 0.6, border = "left" },
            },
          },
        },
      },
      sources = {
        gh_issue = {
          -- your gh_issue picker configuration comes here
          -- or leave it empty to use the default settings
        },
        gh_pr = {
          -- your gh_pr picker configuration comes here
          -- or leave it empty to use the default settings
        },
        files = {
          layout = "ivy_preview_top", -- override layout for files picker
          hidden = true, -- show dot-files
          ignored = true, -- show Git-ignored files
        },
        grep = {
          ignored = false,
          hidden = true, -- Include hidden files in searches
          case_sens = false, -- New! Define custom variable
          toggles = {
            case_sens = "s",
          },
        },
        explorer = {
          hidden = true, -- show dot-files
          ignored = true, -- show Git-ignored files
          layout = { fullscreen = false }, -- override for explorer picker
          focus_current_file = true,
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
