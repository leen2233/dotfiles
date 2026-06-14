return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.config("pyright", {
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
          },
        },
      },
    })

    vim.lsp.enable("pyright")
  end,
}
