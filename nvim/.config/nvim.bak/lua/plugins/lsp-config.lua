return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "ts_ls",
          "tailwindcss",
          "gopls",
          "pylsp",
          "marksman",
          "jsonls",
          "vuels"
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    ---@class PluginLspOpts
    opts = {
      servers = {
        vtsls = {
          settings = {
            vtsls = { autoUseWorkspaceTsdk = true },
          },
        },
      },
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.html.setup({
        capabilities = capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })
      lspconfig.tailwindcss.setup({
        capabilities = capabilities,
      })
      lspconfig.gopls.setup({
        capabilities = capabilities,
      })
      lspconfig.pylsp.setup({
        capabilities = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilities = capabilities,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities,
      })
      lspconfig.marksman.setup({
        capabilities = capabilities,
      })

      local keymap = vim.keymap

      keymap.set("n", "K", vim.lsp.buf.hover, {})
      keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
      keymap.set("n", "<leader>cr", vim.lsp.buf.rename, {})
      keymap.set("n", "gd", vim.lsp.buf.definition, {})
    end,
  },
}
