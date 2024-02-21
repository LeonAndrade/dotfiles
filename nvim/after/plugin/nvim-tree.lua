local nt_status, nvim_tree = pcall(require, "nvim-tree")
if not nt_status then
  return "Could not load nvim-tree"
end

nvim_tree.setup({
  disable_netrw = false,
  hijack_netrw = true,
})
