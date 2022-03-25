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
  -- buffers
  ["n|<A-j>"] = map_cr("BufferLineCycleNext"):with_noremap():with_silent(),
  ["n|<A-k>"] = map_cr("BufferLineCyclePrev"):with_noremap():with_silent(),
  ["n|<A-1>"] = map_cr("BufferLineGoToBuffer 1"):with_noremap():with_silent(),
  ["n|<A-2>"] = map_cr("BufferLineGoToBuffer 2"):with_noremap():with_silent(),
  ["n|<A-3>"] = map_cr("BufferLineGoToBuffer 3"):with_noremap():with_silent(),
  ["n|<A-4>"] = map_cr("BufferLineGoToBuffer 4"):with_noremap():with_silent(),
  ["n|<A-5>"] = map_cr("BufferLineGoToBuffer 5"):with_noremap():with_silent(),
  ["n|<A-6>"] = map_cr("BufferLineGoToBuffer 6"):with_noremap():with_silent(),
  ["n|<A-7>"] = map_cr("BufferLineGoToBuffer 7"):with_noremap():with_silent(),
  ["n|<A-8>"] = map_cr("BufferLineGoToBuffer 8"):with_noremap():with_silent(),
  ["n|<A-9>"] = map_cr("BufferLineGoToBuffer 9"):with_noremap():with_silent(),
  -- nvim-tree
  ["n|<leader>e"]         = map_cr('NvimTreeToggle'):with_noremap():with_silent(),
  ["n|<leader>F"]         = map_cr('NvimTreeFindFile'):with_noremap():with_silent(),
  -- Plugin Telescope
  ["n|<Leader>fp"] = map_cu("lua require('telescope').extensions.project.project{}"):with_noremap():with_silent(),
  ["n|<Leader>fr"] = map_cu("lua require('telescope').extensions.frecency.frecency{}"):with_noremap():with_silent(),
  ["n|<Leader>fe"] = map_cu("DashboardFindHistory"):with_noremap():with_silent(),
  ["n|<Leader>ff"] = map_cu("DashboardFindFile"):with_noremap():with_silent(),
  ["n|<Leader>sc"] = map_cu("DashboardChangeColorscheme"):with_noremap():with_silent(),
  ["n|<Leader>fw"] = map_cu("DashboardFindWord"):with_noremap():with_silent(),
  ["n|<Leader>fn"] = map_cu("DashboardNewFile"):with_noremap():with_silent(),
  ["n|<Leader>fb"] = map_cu("Telescope file_browser"):with_noremap():with_silent(),
  ["n|<Leader>fg"] = map_cu("Telescope git_files"):with_noremap():with_silent(),
--   -- telescope
--   ["n|<leader><leader>"]  = map_cu('Telescope buffers'):with_noremap():with_silent(),
--   ["n|<leader>fw"]  = map_cu('Telescope grep_string'):with_noremap():with_silent(),
--   ["n|<leader>ff"]  = map_cu('Telescope find_files'):with_noremap():with_silent(),
  -- Plugin Aerial
  ["n|<A-t>"] = map_cr("AerialToggle! right"):with_noremap():with_silent(),
}

bind.nvim_load_mapping(plug_map)
