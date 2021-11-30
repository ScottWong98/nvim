local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd
local map_args = bind.map_args
require('keymap.config')

local plug_map = {
  -- packer
  ["n|<leader>pc"]        = map_cr('PackerCompile'):with_noremap():with_silent():with_nowait(),
  ["n|<leader>pa"]        = map_cr('PackerAutoCompile'):with_noremap():with_silent():with_nowait(),
  ["n|<leader>pi"]        = map_cr('PackerInstall'):with_noremap():with_silent():with_nowait(),
  -- nvim-tree
  ["n|<leader>e"]         = map_cr('NvimTreeToggle'):with_noremap():with_silent(),
  ["n|<leader>F"]         = map_cr('NvimTreeFindFile'):with_noremap():with_silent(),
  -- telescope
  ["n|<leader><leader>"]  = map_cu('Telescope buffers'):with_noremap():with_silent(),
  ["n|<leader>fw"]  = map_cu('Telescope grep_string'):with_noremap():with_silent(),
  ["n|<leader>ff"]  = map_cu('Telescope find_files'):with_noremap():with_silent(),
}

bind.nvim_load_mapping(plug_map)
