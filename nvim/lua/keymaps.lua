local opts = { noremap = true, silent = true }

-- Map leader from C-\ to <Space>
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode with jk rather than esc
vim.keymap.set("i", "jk", "<ESC>", opts)

-- Open nvim tree on the left
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize buffer view with arrows
vim.keymap.set("n", "<A-Down>", ":resize -10<CR>", opts)
vim.keymap.set("n", "<A-Up>", ":resize +10<CR>", opts)
vim.keymap.set("n", "<A-Left>", ":vertical resize -10<CR>", opts)
vim.keymap.set("n", "<A-Right>", ":vertical resize +10<CR>", opts)

-- Indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keep J inplace during inline concat.
vim.keymap.set("n", "J", "mzJ`z", opts)

-- Keep cursor in the middle during common navigation.
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "<C-e>", "zz<C-e>j", opts)
vim.keymap.set("n", "<C-y>", "zz<C-y>k", opts)
vim.keymap.set("n", "{", "{zz", opts)
vim.keymap.set("n", "}", "}zz", opts)
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
vim.keymap.set("n", "*", "*zz", opts)

-- Leader P will delete into the null register not preserving the replaced value.
vim.keymap.set("x", "<leader>p", "\"_dP", opts)

-- Select All and copy to system clipboard
vim.keymap.set("n", "<leader>a", "GVgg0\"+y", opts)

-- leader y yanks into the system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", opts)
vim.keymap.set("n", "<leader>Y", "\"+Y", opts)
vim.keymap.set("v", "<leader>y", "\"+y", opts)

-- Add line and return to normal mode
vim.keymap.set("n", "<leader>o", "o<ESC>", {})
vim.keymap.set("n", "<leader>O", "O<ESC>", {})

-- Undotree
vim.keymap.set("n", "<leader>u",  vim.cmd.UndotreeToggle)

-- Telescope
vim.keymap.set("n", "<leader>f", ":Telescope find_files<CR>", opts)
vim.keymap.set("n", "<leader>b", ":Telescope buffers sort_mru=true sort_lastused=true<CR>", opts)
vim.keymap.set("n", "<leader>td", ":Telescope diagnostics<CR>", opts)
vim.keymap.set("n", "<leader>ts", ":Telescope live_grep<CR>", opts)

