local editor = {}
local conf = require('modules.editor.config')

editor["junegunn/vim-easy-align"] = { opt = true, cmd = "EasyAlign" }

editor["itchyny/vim-cursorword"] = {
  opt = true,
  event = { "BufReadPre", "BufNewFile" },
  config = conf.vim_cursorwod,
}

editor["terrortylor/nvim-comment"] = {
  opt = false,
  config = function()
    require("nvim_comment").setup({
      hook = function()
        require("ts_context_commentstring.internal").update_commentstring()
      end,
    })
  end,
}

editor["nvim-treesitter/nvim-treesitter"] = {
  opt = true,
  run = ":TSUpdate",
  event = "BufRead",
  config = conf.nvim_treesitter,
}

editor["nvim-treesitter/nvim-treesitter-textobjects"] = {
  opt = true,
  after = "nvim-treesitter",
}

editor["romgrk/nvim-treesitter-context"] = {
  opt = true,
  after = "nvim-treesitter",
}

editor["p00f/nvim-ts-rainbow"] = {
  opt = true,
  after = "nvim-treesitter",
  event = "BufRead",
}

editor["JoosepAlviste/nvim-ts-context-commentstring"] = {
  opt = true,
  after = "nvim-treesitter",
}

editor["mfussenegger/nvim-ts-hint-textobject"] = {
  opt = true,
  after = "nvim-treesitter",
}

editor["windwp/nvim-ts-autotag"] = {
  opt = true,
  ft = { "html", "xml" },
  config = conf.autotag,
}

editor["andymass/vim-matchup"] = {
  opt = true,
  after = "nvim-treesitter",
  config = conf.matchup,
}

editor["rhysd/accelerated-jk"] = { opt = true, event = "BufReadPost" }

editor["hrsh7th/vim-eft"] = { opt = true, event = "BufReadPost" }

editor["romainl/vim-cool"] = {
  opt = true,
  event = { "CursorMoved", "InsertEnter" },
}

editor["karb94/neoscroll.nvim"] = {
  opt = true,
  event = "WinScrolled",
  config = conf.neoscroll,
}

editor["norcalli/nvim-colorizer.lua"] = {
  opt = true,
  event = "BufRead",
  config = conf.nvim_colorizer,
}

editor["jdhao/better-escape.vim"] = { opt = true, event = "InsertEnter" }

editor["famiu/bufdelete.nvim"] = {
  opt = true,
  cmd = { "Bdelete", "Bwipeout", "Bdelete!", "Bwipeout!" },
}

editor["abecodes/tabout.nvim"] = {
  opt = true,
  event = "InsertEnter",
  wants = "nvim-treesitter",
  after = "nvim-cmp",
  config = conf.tabout,
}

return editor
