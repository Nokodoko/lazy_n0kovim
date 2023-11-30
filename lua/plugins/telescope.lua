return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to brochwse plugin files
      -- stylua: ignore
      --FILE NAVIGATION
      {
        "<leader>ff",
        --function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        --desc = "Find Plugin File",
        function() require("telescope.builtin").find_files(
          require('telescope.themes').get_ivy{ previewer =true },
          { cwd = require("lazy.core.config").options.root }) end,
        desc = "Find Plugin File",
      },

      {
        "<leader>fg",
        function()
          require("telescope.builtin").git_files(require("telescope.themes").get_ivy({ previewer = true }))
        end,
        desc = "Find Git Files",
      },

      {
        "<leader>la",
        function()
          require("telescope.builtin").autocommands(require("telescope.themes").get_ivy({ previewer = true }))
        end,
        desc = "List autocommands",
      },

      {
        "<leader>?",
        function()
          require("telescope.builtin").help_tags(require("telescope.themes").get_ivy({ previewer = true }))
        end,
        desc = "Help Taps",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },

  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
