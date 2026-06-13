return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- PYTHON LSP (pyright)
      lspconfig.pyright.setup({
        capabilities = capabilities,
        settings = {
          python = {
            venvPath = ".",
            venv = "venv",
          },
        },
      })

      lspconfig.ruff.setup({
        capabilities = capabilities,
        init_options = {
          settings = {
            args = {}, -- you can add custom args like {"--line-length=100"}
          },
        },
      })
    end,
  },
}
