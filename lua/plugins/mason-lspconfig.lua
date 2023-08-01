local lsp = require("lsp-zero").preset({})

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim", "VonHeikemen/lsp-zero.nvim" },
  opts = {
    handlers = {
      lsp.default_setup,
      lua_ls = function()
        require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())
      end,
      yamlls = function()
        require("lspconfig").yamlls.setup({})
      end,
      jdtls = function()
        require("lspconfig").jdtls.setup({})
      end,
      solargraph = function()
        require("lspconfig").solargraph.setup({})
      end
    }
  }
}
