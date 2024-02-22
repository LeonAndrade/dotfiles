return {
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/cmp-buffer"},
  {"hrsh7th/cmp-path"},
  {"hrsh7th/cmp-cmdline"},
  {"hrsh7th/cmp-nvim-lua"},
  {
    "hrsh7th/nvim-cmp",
    config = function() 

      local status, cmp = pcall(require, "cmp")
      if not status then
        print("Error loading nvim-cmp")
      end

      local status, luasnip = pcall(require, "luasnip")
      if not status then
        print("Error loading luasnip from nvim-cmp")
      end
      
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) 
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          ['<C-j>'] = cmp.mapping.select_next_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = 'nvim_lua' },
          { name = "buffer" },
          { name = "path" },
        }, {
          { name = "buffer" },
        }),
        window = {
          documentation = {
            border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
          },
        },
      })
      
      -- Use buffer source for "/" and "?"
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" }
        }
      })

      -- Use cmdline & path source for ":"
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" }
        }, {
          { name = "cmdline" }
        })
      })

     
      -- Set up capabilites for lspconfig completions
      -- local status, lspconfig = pcall(require, "lspconfig")
      -- if not status then
      --   print("Error loading lspconfig from nvim-cmp")
      -- end
      --
      -- local status, cmp_lsp = pcall(require, "cmp_nvim_lsp")
      -- if not status then
      --   print("Error loading lspconfig from nvim-cmp")
      -- end
      
      -- local capabilities = cmp_lsp.default_capabilites()
      -- lspconfig["LSP SERVER NAME"].setup {
      --   capabilities = capabilities 
      -- }

    end
  },
}

