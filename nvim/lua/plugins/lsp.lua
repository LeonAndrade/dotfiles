return {
  {
    "williamboman/mason.nvim",
    config = function()
      local status, mason = pcall(require, "mason")
      if not status then
        print("Error loading mason")
      end
      mason.setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      local status, mason_lsp = pcall(require, "mason-lspconfig")
      if not status then
        print("Error loading mason-lspconfig")
      end
      mason_lsp.setup()
    end,
  },
  { "hrsh7th/cmp-nvim-lsp" },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local status, lspconfig = pcall(require, "lspconfig")
      if not status then
        print("Error loading lspconfig")
      end

      local cmp_nvim_status, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      if not cmp_nvim_status then
        print("Error loading lspconfig from nvim-cmp")
      end

      local capabilities = cmp_lsp.default_capabilities()

      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = {
                "vim",
              },
            },
          },
        },
      })
      lspconfig.sqlls.setup({ capabilities = capabilities, })
      lspconfig.bashls.setup({ capabilities = capabilities, })
      lspconfig.pyright.setup({ capabilities = capabilities, })
      lspconfig.clangd.setup({ capabilities = capabilities, })
      lspconfig.terraformls.setup({ capabilities = capabilities, })
      lspconfig.tflint.setup({ capabilities = capabilities, })
      lspconfig.gopls.setup({ capabilities = capabilities, })
      lspconfig.mdx_analyzer.setup({ capabilities = capabilities, })
      lspconfig.cssls.setup({ capabilities = capabilities, })

      vim.keymap.set("n", "<space>d", vim.diagnostic.open_float)
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "]d", vim.diagnostic.goto_prev)
      vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
          vim.keymap.set("n", "<space>la", vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set("n", "<space>lr", vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set("n", "<space>ll", function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
          vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "gr", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end,
      })
    end,
  },
}
