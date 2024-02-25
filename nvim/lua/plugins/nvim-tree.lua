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
      on_attach = "defaullt",
      hijack_cursor = false,
      auto_reload_on_write = true,
      disable_netrw = false,
      hijack_netrw = true,
      hijack_unnamed_buffer_when_opening = false,
      sort = {
        sorter = "case_sensitive",
        folders_first = true,
        files_first = false,
      },
      view = {
        side = "left",
        width = 42,
        number = false,
        relativenumber = false,
      },
      renderer = {
        group_empty = false,
      },
      filters = {
        git_ignored = true,
        dotfiles = false,
        git_clean = false,
        no_buffer = false,
        no_bookmark = false,
      },
      actions = {
        expand_all = {
          max_folder_discovery = 50,
        },
        open_file = {
          resize_window = true,
          window_picker = {
            chars = "fkvneiru",
          },
        }
      }
    }

    local opts = { noremap = true, silent = true }
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
    vim.keymap.set("n", "<leader>nt", ":NvimTreeFocus<cr>", opts)
  end
}
