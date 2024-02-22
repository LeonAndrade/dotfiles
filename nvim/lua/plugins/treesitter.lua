return {

  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()

    local status, configs = pcall(require, "nvim-treesitter.configs")
    if not status then
      print("Error loading nvim-treesitter")
    end

    configs.setup {
      ensure_installed = {
        "bash",
        "c",
        "css",
        "dockerfile",
        "go",
        "hcl",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "sql",
        "typescript",
        "vim",
        "vimdoc",
      },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      }
    }
  end

}
