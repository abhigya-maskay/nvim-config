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
      sqlls = function ()
        require("lspconfig").sqlls.setup({
          root_dir = function () return vim.loop.cwd() end
        })
      end,
      jdtls = function()
        require("lspconfig").jdtls.setup({})
      end,
      solargraph = function()
        require("lspconfig").solargraph.setup({})
      end,
      hls = function ()
        require("lspconfig").hls.setup({})
      end,
      lemminx = function () 
        require("lspconfig").lemminx.setup({})
      end,
      docker_compose_language_service = function()
        require("lspconfig").docker_compose_language_service.setup({})
      end,
      dockerls = function()
        require("lspconfig").dockerls.setup({})
      end
    }
  }
}
