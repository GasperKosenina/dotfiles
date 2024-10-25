-- return {
-- 	"catppuccin/nvim",
-- 	lazy = false,
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("catppuccin-mocha")
-- 	end,
-- }
return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("nightfox")
	end,
}
-- return {
-- 	"ellisonleao/gruvbox.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("gruvbox").setup({
-- 			contrast = "soft",
-- 		})
-- 		vim.cmd.colorscheme("gruvbox")
-- 	end,
-- }
-- return {
-- 	"rose-pine/neovim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			variant = "moon",
-- 			styles = {
-- 				transparency = true,
-- 			},
-- 		})
-- 		vim.cmd.colorscheme("rose-pine")
-- 	end,
-- }
