local completion = {}
local conf = require('modules.completion.config')

completion['neovim/nvim-lspconfig'] = {
  event = 'BufReadPre',
  config = conf.nvim_lsp,
}

completion['nvim-telescope/telescope.nvim'] = {
  cmd = 'Telescope',
  config = conf.telescope,
  requires = {
    {'nvim-lua/plenary.nvim', opt=true},
    {'nvim-telescope/telescope-fzf-native.nvim', run='make', opt=true},
  }
}

completion['hrsh7th/nvim-cmp'] = {
  -- event = 'InsertEnter',
  config = conf.nvim_cmp,
  requires = {
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/cmp-vsnip'},
    {'hrsh7th/vim-vsnip'}
  }
}

return completion
