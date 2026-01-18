local map = vim.keymap.set

-- Top-level
map("n", "<leader>:", "<cmd>Snacks picker commands<cr>", { desc = "M-x" })

-- Windows (SPC w)
map("n", "<leader>wh", "<C-w>h", { desc = "window left" })
map("n", "<leader>wj", "<C-w>j", { desc = "window down" })
map("n", "<leader>wk", "<C-w>k", { desc = "window up" })
map("n", "<leader>wl", "<C-w>l", { desc = "window right" })
map("n", "<leader>wv", "<cmd>vsplit<cr>", { desc = "split vertical" })
map("n", "<leader>ws", "<cmd>split<cr>", { desc = "split horizontal" })
map("n", "<leader>wd", "<cmd>close<cr>", { desc = "delete window" })
map("n", "<leader>ww", "<C-w>w", { desc = "other window" })

-- Buffers (SPC b)
map("n", "<leader>bb", "<cmd>b#<cr>", { desc = "switch buffer" })
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "kill buffer" })
map("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "previous buffer" })

-- Files (SPC f)
map("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "find file" })
map("n", "<leader>fr", function() Snacks.picker.recent() end, { desc = "recent files" })
map("n", "<leader>fs", "<cmd>w<cr>", { desc = "save file" })
map("n", "<leader>ft", "<cmd>Neotree toggle<cr>", { desc = "file tree" })

-- Search (SPC s)
map("n", "<leader>ss", function() Snacks.picker.lines() end, { desc = "search buffer" })
map("n", "<leader>sp", function() Snacks.picker.grep() end, { desc = "search project" })
map("n", "<leader>si", function() Snacks.picker.lsp_symbols() end, { desc = "imenu" })

-- Jump (SPC j)
map("n", "<leader>jj", function() require("flash").jump() end, { desc = "jump to char" })
map("n", "<leader>jw", function() require("flash").jump({ pattern = "\\<" }) end, { desc = "jump to word" })
map("n", "<leader>jl", function() require("flash").jump({ search = { mode = "search" }, pattern = "^" }) end, { desc = "jump to line" })

-- Help (SPC h)
map("n", "<leader>hf", function() Snacks.picker.help() end, { desc = "describe function" })
map("n", "<leader>hv", function() Snacks.picker.help() end, { desc = "describe variable" })
map("n", "<leader>hk", "<cmd>WhichKey<cr>", { desc = "describe key" })

-- Project (SPC p)
map("n", "<leader>pp", function() Snacks.picker.projects() end, { desc = "switch project" })
map("n", "<leader>pf", function() Snacks.picker.files() end, { desc = "find file" })
map("n", "<leader>ps", function() Snacks.picker.grep() end, { desc = "search project" })
map("n", "<leader>pb", function() Snacks.picker.buffers() end, { desc = "project buffer" })
map("n", "<leader>pk", "<cmd>%bdelete<cr>", { desc = "kill project buffers" })

-- Code/LSP (SPC c)
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
map("n", "<leader>cr", vim.lsp.buf.rename, { desc = "rename" })
map("n", "<leader>cf", vim.lsp.buf.format, { desc = "format" })
map("n", "<leader>cd", vim.lsp.buf.definition, { desc = "go to definition" })
map("n", "<leader>cD", vim.lsp.buf.references, { desc = "find references" })
map("n", "<leader>cx", vim.diagnostic.setloclist, { desc = "list errors" })
map("n", "<leader>cn", vim.diagnostic.goto_next, { desc = "next error" })
map("n", "<leader>cp", vim.diagnostic.goto_prev, { desc = "prev error" })

-- Open (SPC o)
map("n", "<leader>op", "<cmd>Neotree toggle<cr>", { desc = "project sidebar" })
map("n", "<leader>ot", "<cmd>terminal<cr>", { desc = "terminal" })
map("n", "<leader>ou", function() require("undotree").toggle() end, { desc = "undo tree" })

-- Quit (SPC q)
map("n", "<leader>qq", "<cmd>qa<cr>", { desc = "quit" })

-- Terminal mode
map("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "exit terminal mode" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "window left" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "window down" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "window up" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "window right" })