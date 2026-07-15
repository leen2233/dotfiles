return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  event = { "BufReadPre", "BufNewFile" },
  config = function ()
    vim.keymap.set({ "v" }, "ac", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@class.outer", "textobjects")
    end)
    vim.keymap.set({ "v" }, "ic", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@class.inner", "textobjects")
    end)
    vim.keymap.set({ "v" }, "af", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
    end)
    vim.keymap.set({ "v" }, "if", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@function.outer", "textobjects")
    end)
    vim.keymap.set({ "v" }, "ab", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@block.inner", "textobjects")
    end)
    vim.keymap.set({ "v" }, "ib", function()
      require "nvim-treesitter-textobjects.select".select_textobject("@block.outer", "textobjects")
    end)
  end,
  opts = {
    select = {
      enable = true,
      lookahead = true,
    },
  }
}
