local completion = {}
local conf = require('modules.completion.config')

completion['neovim/nvim-lspconfig'] = {
  opt = true,
  event = 'BufReadPre',
  config = conf.nvim_lsp,
}

completion['williamboman/nvim-lsp-installer'] = {
  opt = true,
  after = 'nvim-lspconfig',
}

completion["RishabhRD/nvim-lsputils"] = {
  opt = true,
  after = "nvim-lspconfig",
  config = conf.nvim_lsputils,
}

completion["tami5/lspsaga.nvim"] = {
  opt = true,
  after = "nvim-lspconfig",
}

completion["stevearc/aerial.nvim"] = {
  opt = true,
  after = "nvim-lspconfig",
  config = conf.aerial,
}

completion["kosayoda/nvim-lightbulb"] = {
  opt = true,
  after = "nvim-lspconfig",
  config = conf.lightbulb,
}

completion["ray-x/lsp_signature.nvim"] = { opt = true, after = "nvim-lspconfig" }

completion['hrsh7th/nvim-cmp'] = {
  config = conf.nvim_cmp,
  event = 'InsertEnter',
  requires = {
    { 'lukas-reineke/cmp-under-comparator' },
    { 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip' },
    { 'hrsh7th/cmp-nvim-lsp', after = 'cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lua', after = 'cmp-nvim-lsp' },
    { 'hrsh7th/cmp-path', after = 'cmp-nvim-lua' },
    { "hrsh7th/cmp-buffer", after = "cmp-path" },
  },
}

completion['L3MON4D3/LuaSnip'] = {
  after = 'nvim-cmp',
  config = conf.luasnip,
  requires = 'rafamadriz/friendly-snippets',
}

completion['windwp/nvim-autopairs'] = {
  after = 'nvim-cmp',
  config = conf.autopairs,
}

return completion
