return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- required
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = {
        mappings = {
          i = { ["<esc>"] = require("telescope.actions").close }, -- close with Esc
        },
      },
      file_ignore_patterns = {
        "venv", ".venv"
      }
    })

    -- Keymap: Ctrl+P to search files in project
    vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
    -- Keymap: Ctrl+F to live grep
    vim.keymap.set("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { desc = "Find Text" })
  end,
}
