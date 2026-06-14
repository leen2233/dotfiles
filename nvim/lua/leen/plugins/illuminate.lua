return {
  "RRethy/vim-illuminate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("illuminate").configure({
      providers = { "lsp", "treesitter", "regex" },
      delay = 100,
      filetypes_denylist = { "dirvish", "fugitive" },
    })
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { underline = true })
  end,
}
