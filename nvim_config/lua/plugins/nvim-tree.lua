return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    
    local status, nvimtree = pcall(require, "nvim-tree")
    if not status then
      print("Error loading nvim-tree")
    end
    
    nvimtree.setup {
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 42,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      }
    }

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
    vim.keymap.set("n", "<leader>nt", ":NvimTreeFocus<cr>", opts)

  end
}
