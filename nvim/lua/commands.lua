vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, { pattern = { "*.sqlx" }, command = "set syntax=sql" })
