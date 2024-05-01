local config = {
  transparent_background = true,
  gamma = 1.00,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    identifiers = { italic = true },
    functions = {},
    variables = {},
  },
  custom_highlights = {},
  custom_palette = {},
  terminal_colors = true,
}

return config

-- return {
--   config = function()
--     require("tokyodark").setup(config)
--   end,
-- }
