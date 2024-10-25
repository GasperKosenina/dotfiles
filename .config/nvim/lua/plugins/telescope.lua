return {
  {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local actions = require("telescope.actions")

      require("telescope").setup({
        defaults = {
          mappings = {
            i = {
              ["<c-k>"] = actions.move_selection_previous,
              ["<c-j>"] = actions.move_selection_next,
            },
          },
        },
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      local default_opts = { noremap = true }

      vim.keymap.set(
        "n",
        "<leader>ff",
        "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
        default_opts
      )
      vim.keymap.set("n", "<leader>fg", "<cmd>lua require'telescope.builtin'.live_grep()<cr>", default_opts)
      vim.keymap.set("n", "<leader><leader>", "<cmd>lua require'telescope.builtin'.oldfiles()<cr>", default_opts)

      require("telescope").load_extension("ui-select")
    end,
  },
}
