local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return "Error loading treesitter"
end

treesitter.setup({
  ensure_installed = {
    "c",
    "lua",
    "go",
    "hcl",
    "vim",
    "vimdoc",
    "query",
    "css",
    "json",
    "javascript",
    "typescript",
    "html",
  },
  auto_install = true,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
