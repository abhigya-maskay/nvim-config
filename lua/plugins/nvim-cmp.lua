return {
  "hrsh7th/nvim-cmp",
  version = false,
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
  },
  opts = function () 
    vim.api.nvim_set_hl(
      0, 
      "CmpGhostText", 
      {link = "Comment", default = true}
    )
    local cmp = require("cmp")
    local defaults = require("cmp.config.default")()
    return {
      completion = {
        completeopt = "menu,menuone,noinsert"
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" }
      }),
      experimental = {
        ghost_text = {
          hl_group = "CmpGhostText"
        }
      },
      sorting = defaults.sorting
    }
  end
}
