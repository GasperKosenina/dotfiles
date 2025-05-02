return {
  "catppuccin/nvim",
  lazy = false,
  name = "catppuccin",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("catppuccin-macchiato")
  end,
}
-- return {
--   "ellisonleao/gruvbox.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("gruvbox").setup({
--       contrast = "dark",
--     })
--     vim.cmd.colorscheme("gruvbox")
--   end,
-- }
-- return {
--   "rose-pine/neovim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("rose-pine").setup({
--       variant = "moon",
--     })
--     vim.cmd.colorscheme("rose-pine")
--   end,
-- }
