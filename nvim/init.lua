-- Set up lazy package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Recommended settings from nvim-tree to disable default netrw behavior
-- vim.g.loaded_netrw       = 1
-- vim.g.loaded_netrwPlugin = 1

-- Autoinstall lazy if not installed
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- Prepend nvim runtimepath with path to lazy bin
vim.opt.rtp:prepend(lazypath)

-- import plugin definitions
require("options")
require("keymaps")
require("commands")
require("plugins")

-- import and configure nvim plugins
-- require("lazy").setup("plugins", {})
