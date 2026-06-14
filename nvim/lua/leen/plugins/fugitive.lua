return {
  "tpope/vim-fugitive",
  cmd = { "Git", "G", "Gdiffsplit", "Gvdiffsplit", "Gcommit", "Gpush", "Gpull" },
  keys = {
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git status (fugitive)" },
    { "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "Git diff split" },
    { "<leader>gc", "<cmd>Gcommit<cr>", desc = "Git commit" },
    { "<leader>gp", "<cmd>Gpush<cr>", desc = "Git push" },
  },
}
