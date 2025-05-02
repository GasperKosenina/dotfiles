return {
  -- "catppuccin/nvim",
  -- lazy = false,
  -- name = "catppuccin",
  -- priority = 1000,
  -- config = function()
  --   vim.cmd.colorscheme("catppuccin-macchiato")
  -- end,
  -- "ellisonleao/gruvbox.nvim",
  -- priority = 1000,
  -- config = true,
  -- config = function()
  --   require("gruvbox").setup({
  --     terminal_colors = true, -- add neovim terminal colors
  --     undercurl = true,
  --     underline = true,
  --     bold = true,
  --     italic = {
  --       strings = false,
  --       emphasis = true,
  --       comments = true,
  --       operators = false,
  --       folds = true,
  --     },
  --     strikethrough = true,
  --     invert_selection = false,
  --     invert_signs = false,
  --     invert_tabline = false,
  --     invert_intend_guides = false,
  --     inverse = true, -- invert background for search, diffs, statuslines and errors
  --     contrast = "hard", -- can be "hard", "soft" or empty string
  --     palette_overrides = {},
  --     overrides = {},
  --     dim_inactive = false,
  --     transparent_mode = false,
  --   })
  --   vim.cmd("colorscheme gruvbox")
  -- end,
  "rose-pine/neovim",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      styles = {
        italics = false,
        transparency = true,
      },
    })
    vim.cmd.colorscheme("rose-pine")
  end,
}
