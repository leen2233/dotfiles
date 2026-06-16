return {
  "olimorris/persisted.nvim",
  config = function()
    require("persisted").setup({
      autoload = true,
      autosave = true,
      on_autoload_no_session = function()
        vim.cmd("Alpha") -- show dashboard if no session
      end,
    })
  end,
}
