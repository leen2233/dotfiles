return {
  -- Vim-Go plugin for Go development
  "fatih/vim-go",
  ft = "go", -- Load only for Go files
  build = ":GoUpdateBinaries", -- Install/update Go tools on install
}
