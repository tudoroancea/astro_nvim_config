-- TODO test
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = "TodoQuickFix",
  },
  {
      "nvim-neo-tree/neo-tree.nvim",
      opts = {
          filesystem = {
              filtered_items = {
                  visible = true,
                  show_hidden_count = true,
                  hide_dotfiles = false,
                  hide_gitignored = true,
                  hide_by_name = {
                      '.git',
                      -- '.DS_Store',
                  },
                  never_show = {},
              },
          }
      }
  },
  {
      'maxmx03/dracula.nvim',
      lazy = false,    -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function()
          local dracula = require 'dracula'

          dracula.setup()

          vim.cmd.colorscheme 'dracula'
      end
  },
  -- { -- further customize the options set by the community
  --   "zbirenbaum/copilot.lua",
  --   opts = {
  --       suggestion = {
  --         keymap = {
  --           accept = "<cr>",
  --           accept_word = false,
  --           accept_line = false,
  --           next = "<c-.>",
  --           prev = "<c-,>",
  --           dismiss = "<c/>",
  --         },
  --       },
  --   },
  -- },
}
