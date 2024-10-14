vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- lastest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("options")
require("keymaps")
require("lazy").setup("plugins", {})

vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python_provider = 0
vim.g.python3_host_prog = "~/.venvs/nvim_venv/bin/python3"

vim.cmd.colorscheme("catppuccin")
