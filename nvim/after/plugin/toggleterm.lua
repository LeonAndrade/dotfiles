local toggleterm = require("toggleterm")

toggleterm.setup({
  open_mapping = [[<c-\>]],
  direction = "float",
  size = 20,
})

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end

local node = Terminal:new({ cmd = "node", hidden = true })
function _NODE_TOGGLE()
  node:toggle()
end

local python = Terminal:new({ cmd = "python3", hidden = true })
function _PYTHON_TOGGLE()
  python:toggle()
end

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<leader>lz", ":lua _LAZYGIT_TOGGLE()<cr>", opts)
keymap("n", "<leader>ty", ":lua _PYTHON_TOGGLE()<cr>", opts)
keymap("n", "<leader>tn", ":lua _NODE_TOGGLE()<cr>", opts)
