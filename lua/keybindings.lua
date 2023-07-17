local wk = require("which-key")

wk.register({
  f = {
    name = "File",
    f = {":Oil --float ~<cr>", "Find File"},
    c = {":Oil --float %:.:h<cr>", "Find File in cwd"}
  },
  p = {
    name = "Project",
    f = {":Oil --float .<cr>", "Find File in Project"}
  },
  b = {
    name = "Buffer",
    d = {":bd<cr>", "Delete current buffer"}
  },
  w = {
    name = "Window",
    s = {"<C-w>s", "Split window horizontally"},
    v = {"<C-w>v", "Split window vertically"},
    d = {":q<cr>", "Close current window"},
    h = {"<C-w>h", "Focus window left"},
    j = {"<C-w>j", "Focus window down"},
    k = {"<C-w>k", "Focus window up"},
    l = {"<C-w>l", "Focus window right"},
    H = {"<C-w>H", "Move window left"},
    J = {"<C-w>L", "Move window down"},
    K = {"<C-w>K", "Move window up"},
    L = {"<C-w>L", "Move window right"}
  },
  n = {
    name = "Notifications",
    q = {function () 
      require("notify").dismiss({ silent = true, pending = true })
    end, "Dismiss all notifications"}
  },
  t = {
    name = "Telescope",
    f = {
      function () 
        require("telescope.builtin").find_files()
      end, 
      "Find files"
    },
    g = {
      function ()
        require("telescope.builtin").live_grep()
      end,
      "Live search folders"
    },
    b = {
      function ()
        require("telescope.builtin").buffers()
      end,
      "Search through buffers"
    }
  }
}, {prefix = "<leader>"})

wk.register({
  g = {
    name = "Surround",
    z = {
      name = "Surround",
    }
  }
})
