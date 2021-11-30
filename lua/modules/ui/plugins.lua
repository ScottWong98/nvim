local ui = {}
local conf = require('modules.ui.config')

ui['glepnir/zephyr-nvim'] = {
  config = [[vim.cmd('colorscheme zephyr')]]
}

ui['nvim-lualine/lualine.nvim'] = {
  config = conf.lualine,
  requires = {'kyazdani42/nvim-web-devicons'}
}

ui['akinsho/nvim-bufferline.lua'] = {
  config = conf.nvim_bufferline,
  requires = {
    {'kyazdani42/nvim-web-devicons'},
  }
}

ui['lukas-reineke/indent-blankline.nvim'] = {
  event = 'BufRead',
  config = conf.indent_blankline
}

ui['kyazdani42/nvim-tree.lua'] = {
  config = conf.nvim_tree,
  requires = 'kyazdani42/nvim-web-devicons',
}
return ui
