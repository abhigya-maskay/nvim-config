return {
  "nvim-lualine/lualine.nvim",
  opts = {
    tabline = {},
    sections = {
      lualine_y = {
        function () 
          return require("battery").get_status_line()
        end
      }
    }
  },
  dependencies = { "nvim-tree/nvim-web-devicons" }
}
