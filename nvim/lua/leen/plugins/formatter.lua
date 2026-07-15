return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      python = { "isort", "black" }
    },  
    format_on_save = {
      async = false,
      timeout_ms = 500
    }
  }
}
