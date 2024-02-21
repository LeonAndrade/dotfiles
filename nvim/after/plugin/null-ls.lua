local status, null_ls = pcall(require, "null-ls")
if not status then
  return "Could not load null-ls (none-ls)"
end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.goimports,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.isort,
    null_ls.builtins.formatting.black,
  }
})

vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
