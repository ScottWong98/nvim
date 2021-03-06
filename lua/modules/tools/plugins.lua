local tools = {}
local conf = require('modules.tools.config')

tools["RishabhRD/popfix"] = { opt = false }

tools["nvim-lua/plenary.nvim"] = { opt = false }

tools["nvim-telescope/telescope.nvim"] = {
  opt = true,
  module = "telescope",
  cmd = "Telescope",
  config = conf.telescope,
  requires = {
    { "nvim-lua/plenary.nvim", opt = false },
    { "nvim-lua/popup.nvim", opt = true },
  },
}

tools["nvim-telescope/telescope-fzf-native.nvim"] = {
  opt = true,
  run = "make",
  after = "telescope.nvim",
}

tools["nvim-telescope/telescope-project.nvim"] = {
  opt = true,
  after = "telescope-fzf-native.nvim",
}

tools["nvim-telescope/telescope-frecency.nvim"] = {
  opt = true,
  after = "telescope-project.nvim",
  requires = { { "tami5/sqlite.lua", opt = true } },
}

tools["folke/which-key.nvim"] = {
  opt = true,
  keys = ",",
  config = function()
    require("which-key").setup({})
  end,
}

tools["folke/trouble.nvim"] = {
  opt = true,
  cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
  config = conf.trouble,
}

tools["gelguy/wilder.nvim"] = {
  disable = true,
  event = "CmdlineEnter",
  config = conf.wilder,
  requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
}

tools["dstein64/vim-startuptime"] = { opt = true, cmd = "StartupTime" }

tools["nathom/filetype.nvim"] = {
  opt = false,
  config = conf.filetype,
}

return tools
