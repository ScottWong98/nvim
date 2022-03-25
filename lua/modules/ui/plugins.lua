local ui = {}
local conf = require('modules.ui.config')

ui["kyazdani42/nvim-web-devicons"] = { opt = false }

ui["catppuccin/nvim"] = {
  opt = false,
  as = "catppuccin",
  config = conf.catppuccin,
}

ui['folke/tokyonight.nvim'] = {
  disable = true,
  config = [[vim.cmd('colorscheme tokyonight')]]
}

ui['nvim-lualine/lualine.nvim'] = {
  config = conf.lualine,
}

ui['akinsho/nvim-bufferline.lua'] = {
  config = conf.nvim_bufferline,
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
