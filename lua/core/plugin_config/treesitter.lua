require'nvim-treesitter.configs'.setup {
  -- A list of parser names or "all"
  ensure_installed = { "lua", "ruby", "vim", "html", "ledger", "javascript", "bash"},

  -- Install parsers synchrounously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}

