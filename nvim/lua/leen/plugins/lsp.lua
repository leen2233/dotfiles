-- lua/leen/plugins/lsp.lua
-- install LSP + completion plugins
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",           -- completion engine
      "hrsh7th/cmp-nvim-lsp",      -- LSP source for cmp
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",          -- snippets
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- enable capabilities for cmp
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- HTML LSP
      lspconfig.html.setup({
        capabilities = capabilities,
      })

      -- Django / HTML templates (use emmet + tailwind-like support)
      lspconfig.emmet_ls.setup({
        capabilities = capabilities,
        filetypes = {
          "html",
          "css",
          "javascriptreact",
          "typescriptreact",
          "htmldjango", -- important for django templates
        },
      })

      -- enable django template filetype
      vim.filetype.add({
        pattern = {
          [".*%.html"] = "htmldjango",
        },
      })

      -- nvim-cmp setup
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        },
      })
    end,
  },
}
