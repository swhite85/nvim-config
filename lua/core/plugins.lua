local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  {
    'Mofiqul/dracula.nvim',
    lazy = false,
    priority = 1000
  },
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-treesitter/nvim-treesitter',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'L3MON4D3/LuaSnip',
  'saadparwaiz1/cmp_luasnip',
  'rafamadriz/friendly-snippets',
  'christoomey/vim-tmux-navigator',
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'lewis6991/gitsigns.nvim',
  'neovim/nvim-lspconfig',
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.0',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  }
}

local opts = {}

require("lazy").setup(plugins, opts)

