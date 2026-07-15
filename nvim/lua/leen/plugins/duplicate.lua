return {
  "hinell/duplicate.nvim",
  config = function()
    vim.keymap.set({ "n" }, "<C-j>"   ,"<CMD>LineDuplicate -1<CR>")
    vim.keymap.set({ "n" }, "<C-k>" ,"<CMD>LineDuplicate +1<CR>")
    vim.keymap.set({ "v" }, "<C-j>" ,"<CMD>VisualDuplicate -1<CR>")
    vim.keymap.set({ "v" }, "<C-k>" ,"<CMD>VisualDuplicate +1<CR>")
  end,
}
