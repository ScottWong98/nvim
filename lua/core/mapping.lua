local bind = require('keymap.bind')
local map_cr = bind.map_cr
local map_cu = bind.map_cu
local map_cmd = bind.map_cmd

local default_map = {
  -- buf
  ["n|<C-w>"]     = map_cr('bdelete'):with_noremap(),
  -- window
  ["n|<C-h>"]     = map_cmd('<C-w>h'):with_noremap(),
  ["n|<C-j>"]     = map_cmd('<C-w>j'):with_noremap(),
  ["n|<C-k>"]     = map_cmd('<C-w>k'):with_noremap(),
  ["n|<C-l>"]     = map_cmd('<C-w>l'):with_noremap(),
  -- insert mode
  ["i|<C-w>"]     = map_cmd('<C-[>diwa'):with_noremap(),
  ["i|<C-d>"]     = map_cmd('<Del>'):with_noremap(),
  ["i|<C-a>"]     = map_cmd('<ESC>^i'):with_noremap(),
  ["i|<C-k>"]     = map_cmd('<ESC>^d$a'):with_noremap(),
  ["i|<C-e>"]     = map_cmd('<ESC>$a'):with_noremap(),
  -- command line
  ["c|<C-b>"]      = map_cmd('<Left>'):with_noremap(),
  ["c|<C-f>"]      = map_cmd('<Right>'):with_noremap(),
  ["c|<C-a>"]      = map_cmd('<Home>'):with_noremap(),
  ["c|<C-e>"]      = map_cmd('<End>'):with_noremap(),
  ["c|<C-d>"]      = map_cmd('<Del>'):with_noremap(),
  ["c|<C-t>"]      = map_cmd([[<C-R>=expand("%:p:h") . "/" <CR>]]):with_noremap(),
}
bind.nvim_load_mapping(default_map)

