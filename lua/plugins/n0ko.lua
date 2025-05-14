return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "nvim-lua/plenary.nvim" },
  { "vimwiki/vimwiki" },
  { "jackMort/ChatGPT.nvim" },
  { "munifTanjim/nui.nvim" },
  { "tpope/vim-surround" },
  { "ThePrimeagen/harpoon" },
  -- { "garyburd/go-explorer" },
  { "nvim-telescope/telescope-frecency.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "tokyodark",
      -- colorscheme = "tokyonight",
      -- colorscheme = "nightfox",
      -- colorscheme = "gruvbox",
    },
  },
  -- {
  --   "saghen/blink.cmp",
  --   -- optional: provides snippets for the snippet source
  --   dependencies = "rafamadriz/friendly-snippets",
  --
  --   -- use a release tag to download pre-built binaries
  --   version = "*",
  --   -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
  --   -- build = 'cargo build --release',
  --   -- If you use nix, you can build from source using latest nightly rust with:
  --   -- build = 'nix run .#build-plugin',
  --
  --   ---@module 'blink.cmp'
  --   ---@type blink.cmp.Config
  --   opts = {
  --     -- 'default' for mappings similar to built-in completion
  --     -- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
  --     -- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
  --     -- See the full "keymap" documentation for information on defining your own keymap.
  --     keymap = {
  --       preset = "none",
  --       ["<C-p>"] = { "show", "show_documentation", "hide_documentation" },
  --
  --       ["<C-Up>"] = { "select_prev", "fallback" },
  --       ["<C-Down>"] = { "select_next", "fallback" },
  --       ["<C-l>"] = { "accept" },
  --
  --       ["<C-b>"] = { "scroll_documentation_up", "fallback" },
  --       ["<C-f>"] = { "scroll_documentation_down", "fallback" },
  --
  --       ["<C-Right>"] = { "snippet_forward", "fallback" },
  --       ["<C-Left>"] = { "snippet_backward", "fallback" },
  --
  --       ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
  --     },
  --
  --     appearance = {
  --       -- Sets the fallback highlight groups to nvim-cmp's highlight groups
  --       -- Useful for when your theme doesn't support blink.cmp
  --       -- Will be removed in a future release
  --       use_nvim_cmp_as_default = true,
  --       -- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
  --       -- Adjusts spacing to ensure icons are aligned
  --       nerd_font_variant = "mono",
  --     },
  --
  --     -- Default list of enabled providers defined so that you can extend it
  --     -- elsewhere in your config, without redefining it, due to `opts_extend`
  --     sources = {
  --       default = { "lsp", "path", "snippets", "buffer" },
  --     },
  --   },
  --   opts_extend = { "sources.default" },
  -- },
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- disable trouble
  { "folke/trouble.nvim", enabled = true },

  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    config = true,
  },
  -- SNACKS FLOATING BEHAVIOR
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        win = {
          position = "float",
        },
      },
    },
  },
  -- \SNACKS FLOATING BEHAVIOR
  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  { import = "lazyvim.plugins.extras.lang.typescript" },
  { import = "lazyvim.plugins.extras.lang.json" },

  -- {
  --   "hrsh7th/nvim-cmp",
  --   requires = { "hrsh7th/cmp-emoji" },
  --   config = function()
  --     require("cmp").setup({
  --       sources = {
  --         { name = "emoji" },
  --       },
  --       mapping = {
  --         ["<Tab>"] = require("cmp").mapping(function(fallback)
  --           if require("cmp").visible() then
  --             require("cmp").select_next_item()
  --           else
  --             fallback()
  --           end
  --         end, { "i", "s" }),
  --         ["<S-Tab>"] = require("cmp").mapping(function(fallback)
  --           if require("cmp").visible() then
  --             require("cmp").select_prev_item()
  --           else
  --             fallback()
  --           end
  --         end, { "i", "s" }),
  --       },
  --     })
  --   end,
  -- },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip").config.setup({
        enable = true,
        ext_opts = {
          [1] = {
            priority = 1000,
          },
        },
      })
    end,
  },
}
