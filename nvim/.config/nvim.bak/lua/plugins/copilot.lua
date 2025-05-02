return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_filetypes = {
			markdown = false,
		}
		vim.api.nvim_set_keymap("n", "<leader>cd", ":Copilot disable<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>ce", ":Copilot enable<CR>", { noremap = true, silent = true })
	end,
}
