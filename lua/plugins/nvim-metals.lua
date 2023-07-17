return {
  "scalameta/nvim-metals",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp"
  },
  config = function ()
    local metals_config = require("metals").bare_config()
    metals_config.settings = {
      showImplicitArguments = true
    }
    metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
  end
}
