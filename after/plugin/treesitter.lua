require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "javascript", "typescript", "rust", "lua" },

  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
  },
}
