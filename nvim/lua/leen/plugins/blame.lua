return {
  "tveskag/nvim-blame-line",
  event = "BufReadPost",
  config = function()
    vim.g.blameLineUseVirtualText = 0  -- Use virtual text (default)
    vim.g.blameLineGitFormat = '%an | %ar | %s'  -- Author | Relative date | Summary
    -- Optional: vim.g.blameLineMessageWhenNotYetCommited = 'Uncommitted'
  end,
}
