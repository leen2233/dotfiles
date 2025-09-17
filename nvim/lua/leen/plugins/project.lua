return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      manual_mode = false,
      -- detect project root using lsp/git
      detection_methods = { "pattern" },
      patterns = { ".git", "venv", "package.json", "pyproject.toml" },

      scope_chdir = 'global',
    })

    -- optional: integrate with telescope
    require("telescope").load_extension("projects")

    -- open project picker automatically on startup
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        if vim.fn.argc() == 0 then
          require("telescope").extensions.projects.projects()
        end
      end,
    })
  end,
}
