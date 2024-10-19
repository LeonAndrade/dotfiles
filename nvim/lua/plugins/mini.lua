return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    local ai_status, mini_ai = pcall(require, "mini.ai")
    if not ai_status then
      print("error loading mini.ai")
    end
    mini_ai.setup()

    local s_status, surround = pcall(require, "mini.surround")
    if not s_status then
      print("error loading mini.surround")
    end
    surround.setup()

    local splitjoin_status, splitjoin = pcall(require, "mini.splitjoin")
    if not splitjoin_status then
      print("error loading mini.splitjoin")
    end
    splitjoin.setup({
      -- Module mappings. Use `''` (empty string) to disable one.
      -- Created for both Normal and Visual modes.
      mappings = {
        toggle = 'gS',
        split = '',
        join = '',
      },

      -- Detection options: where split/join should be done
      detect = {
        -- Array of Lua patterns to detect region with arguments.
        -- Default: { '%b()', '%b[]', '%b{}' }
        brackets = nil,

        -- String Lua pattern defining argument separator
        separator = ',',

        -- Array of Lua patterns for sub-regions to exclude separators from.
        -- Enables correct detection in presence of nested brackets and quotes.
        -- Default: { '%b()', '%b[]', '%b{}', '%b""', "%b''" }
        exclude_regions = nil,
      },

      -- Split options
      split = {
        hooks_pre = {},
        hooks_post = {},
      },

      -- Join options
      join = {
        hooks_pre = {},
        hooks_post = {},
      },
    })

    local trim_status, trailspace = pcall(require, "mini.trailspace")
    if not trim_status then
      print("error loading mini.trailspace")
    end
    trailspace.setup()

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      callback = function() trailspace.trim() end
    })
  end,
}
