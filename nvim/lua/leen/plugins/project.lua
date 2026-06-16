return {
  "ahmedkhalf/project.nvim",
  config = function()
    -- suppress deprecated warning until project.nvim updates
    local notify = vim.notify
    vim.notify = function(msg, ...)
      if msg:match("vim.lsp.buf_get_clients") then
        return
      end
      notify(msg, ...)
    end

    require("project_nvim").setup({
      detection_methods = { "lsp", "pattern" },
      patterns = { ".git", "package.json", "go.mod", "Cargo.toml" },
    })

    vim.notify = notify
  end,
}
