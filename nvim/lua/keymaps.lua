local opts = { noremap = true, silent = true }

-- Map leader from C-\ to <Space>
vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- exit insert mode with jk
vim.keymap.set("i", "jk", "<ESC>", opts)

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

-- Keep cursor inplace during inline concat
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

-- Leader P will delete into the null register not preserving the deleted value
vim.keymap.set("x", "<leader>p", '"_dP', opts)

-- Select All and copy to system clipboard
vim.keymap.set("n", "<leader>a", 'GVgg"+y', opts)

-- leader y yanks selection into the system clipboard
vim.keymap.set("n", "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>Y", '"+Y', opts)
vim.keymap.set("v", "<leader>y", '"+y', opts)

-- Insert line above or below
vim.keymap.set("n", "<leader>o", "o<ESC>k", opts)
vim.keymap.set("n", "<leader>O", "O<ESC>j", opts)

-- Undo tree keymap
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- Format json file
vim.keymap.set("n", "<leader>jq", ":%!jq .<CR>", opts)
