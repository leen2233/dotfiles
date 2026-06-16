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
        file_ignore_patterns = {
          "venv", 
          ".venv",
          "__pycache__",
          "media/"
        }
      },
    })

    -- Keymap: Ctrl+P to search files in project
    vim.keymap.set("n", "<C-p>", function()
      require("telescope.builtin").find_files()
    end, { desc = "Find Files" })
    -- Keymap: Ctrl+F to live grep
    vim.keymap.set("n", "<C-f>", function()
      require("telescope.builtin").live_grep()
    end, { desc = "Find Text" })
  end,
}
