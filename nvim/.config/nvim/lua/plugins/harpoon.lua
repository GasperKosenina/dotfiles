return {
  "ThePrimeagen/harpoon",

  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Toggle Harpoon Menu" })
    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to Harpoon" })
  end,
}
