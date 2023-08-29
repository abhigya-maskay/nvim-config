return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function ()
    vim.cmd[[colorscheme tokyonight]]
    vim.cmd[[highlight Normal guibg=NONE]]
    vim.cmd[[highlight NonText guibg=NONE]]
    vim.cmd[[highlight SignColumn guibg=NONE]]
  end
}
