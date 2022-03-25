local global = require('core.global')
local vim = vim

-- Create cache dir and sub dir
local create_dir = function()
  local data_dir = {
    global.cache_dir .. "backup",
    global.cache_dir .. "session",
    global.cache_dir .. "swap",
    global.cache_dir .. "tags",
    global.cache_dir .. "undo",
  }
  -- Only check once that if cache_dir exists
  if vim.fn.isdirectory(global.cache_dir) == 0 then
    os.execute("mkdir -p " .. global.cache_dir)
    for _, v in pairs(data_dir) do
      if vim.fn.isdirectory(v) == 0 then
        os.execute("mkdir -p " .. v)
      end
    end
  end
end

-- TODO
local disable_distribution_plugins = function()
  vim.g.loaded_gzip = 1
end

local leader_map = function()
  vim.g.mapleader = " "
  vim.api.nvim_set_keymap('n', ' ', '', {noremap = true})
  vim.api.nvim_set_keymap('x', ' ', '', {noremap = true})
  vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
end


local load_core = function()
  local pack = require('core.pack')
  create_dir()
  disable_distribution_plugins()
  leader_map()

  pack.ensure_plugins()
  
  require('core.options')
  require('core.event')
  require('core.mapping')
  require('keymap')
  pack.load_compile()

  vim.cmd([[colorscheme catppuccin]])
end

load_core()
