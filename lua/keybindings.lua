local wk = require("which-key")

wk.register({
  f = {
    name = "File",
    f = { ":Oil --float ~<cr>", "Find File" },
    c = { ":Oil --float %:.:h<cr>", "Find File in cwd" },
    t = { ":NvimTreeToggle<cr>", "Open cwd in NvimTree" }
  },
  p = {
    name = "Project",
    f = { ":Oil --float .<cr>", "Find File in Project" }
  },
  b = {
    name = "Buffer",
    d = { ":bd<cr>", "Delete current buffer" }
  },
  w = {
    name = "Window",
    s = { "<C-w>s", "Split window horizontally" },
    v = { "<C-w>v", "Split window vertically" },
    d = { ":q<cr>", "Close current window" },
    h = { "<C-w>h", "Focus window left" },
    j = { "<C-w>j", "Focus window down" },
    k = { "<C-w>k", "Focus window up" },
    l = { "<C-w>l", "Focus window right" },
    H = { "<C-w>H", "Move window left" },
    J = { "<C-w>L", "Move window down" },
    K = { "<C-w>K", "Move window up" },
    L = { "<C-w>L", "Move window right" }
  },
  n = {
    name = "Notifications",
    q = { function()
      require("notify").dismiss({ silent = true, pending = true })
    end, "Dismiss all notifications" }
  },
  t = {
    name = "Telescope",
    f = {
      require("telescope.builtin").find_files,
      "Find files"
    },
    g = {
      require("telescope.builtin").live_grep,
      "Live search folders"
    },
    b = {
      require("telescope.builtin").buffers,
      "Search through buffers"
    }
  },
  l = {
    name = "LSP",
    g = {
      name = "Go to",
      d = {
        vim.lsp.buf.definition,
        "Definition"
      },
      D = {
        vim.lsp.buf.declaration,
        "Declaration"
      },
      i = {
        vim.lsp.buf.implementation,
        "Implementation"
      },
      t = {
        vim.lsp.buf.type_definition,
        "Type definition"
      },
      r = {
        vim.lsp.buf.references,
        "References"
      },
      s = {
        vim.lsp.buf.signature_help(),
        "Signature Help"
      }
    },
    d = {
      vim.diagnostic.open_float
      ,
      "Open diagnostics"
    },
    h = {
      vim.lsp.buf.hover,
      "Hover Diagnostics"
    },
    f = {
      vim.lsp.buf.format,
      "Format"
    }
  },
  s = {
    name = "Search",
    f = {
      require("fzf-lua").files,
      "Find Files"
    },
    b = {
      require("fzf-lua").buffers,
      "Find Buffers"
    },
    g = {
      require("fzf-lua").live_grep,
      "Live grep current project"
    }
  },
  g = {
    name = "git",
    g = {
      ":LazyGit<cr>",
      "LazyGit"
    }
  }
}, { prefix = "<leader>" })

wk.register({
  g = {
    name = "Surround",
    z = {
      name = "Surround",
    }
  }
})
