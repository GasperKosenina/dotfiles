return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
			{ "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
		},
		build = "make tiktoken", -- Only on MacOS or Linux
		opts = {
			-- See Configuration section for options
		},
		keys = {
			{ "<leader>cc", ":CopilotChatToggle<CR>", desc = "Toggle Copilot Chat" },
			{ "<leader>cm", ":CopilotChatModels<CR>", desc = "Toggle Copilot Chat Models", mode = "n" },
		},

		-- See Commands section for default commands if you want to lazy load on them
	},
}
