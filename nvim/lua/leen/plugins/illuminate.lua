return {
  "RRethy/vim-illuminate",
  event = "BufReadPost",
  config = function()
    require("illuminate").configure()
    local bg = "#504945"
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = bg })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = bg })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = bg })
  end,
}
