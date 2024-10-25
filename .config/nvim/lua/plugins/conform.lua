return {
	"stevearc/conform.nvim",
	lazy = false,
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescriptreact = { "prettierd" },
			markdown = { "prettierd" },
			go = { "gofumpt", "goimports" },
			json = { "prettierd" },
			python = { "isort", "black" },
		},
		format_on_save = {
			lsp_format = "fallback",
			timeout_ms = 500,
		},
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		}),
	},
}
