-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/scott/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/scott/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/scott/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/scott/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/scott/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nÞ\5\0\0\3\0\15\0!6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0=\1\5\0006\0\0\0009\0\1\0005\1\b\0=\1\a\0006\0\0\0009\0\1\0+\1\1\0=\1\t\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\1\0005\1\f\0=\1\v\0006\0\0\0009\0\r\0'\2\14\0B\0\2\1K\0\1\0001autocmd CursorMoved * IndentBlanklineRefresh\bcmd\1\f\0\0\nclass\rfunction\vmethod\nblock\17list_literal\rselector\b^if\v^table\17if_statement\nwhile\bfor&indent_blankline_context_patterns*indent_blankline_show_current_context4indent_blankline_show_trailing_blankline_indent\1\3\0\0\rterminal\vnofile%indent_blankline_buftype_exclude\1\22\0\0\rstartify\14dashboard\16dotooagenda\blog\rfugitive\14gitcommit\vpacker\fvimwiki\rmarkdown\tjson\btxt\nvista\thelp\ftodoist\rNvimTree\rpeekaboo\bgit\20TelescopePrompt\rundotree\24flutterToolsOutline\5&indent_blankline_filetype_exclude-indent_blankline_show_first_indent_level\bâ”‚\26indent_blankline_char\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\15extensions\1\0\0\1\2\0\0\rquickfix\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nó\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\rfiletype\rNvimTree\ttext\18File Explorer\15text_align\tleft\1\0\4\16diagnostics\rnvim_lsp\27always_show_bufferline\2\22buffer_close_icon\5\20show_close_icon\1\nsetup\15bufferline\frequire\0" },
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim³\4\1\0\t\0#\0@6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\a\b\0009\a\t\aB\a\1\0025\b\n\0B\5\3\2=\5\f\0049\5\b\0009\5\r\0055\a\14\0B\5\2\2=\5\15\4=\4\b\0039\4\16\0009\4\17\0044\6\3\0005\a\18\0>\a\1\0065\a\19\0>\a\2\0064\a\3\0005\b\20\0>\b\1\aB\4\3\2=\4\17\3B\1\2\0019\1\2\0009\1\21\1'\3\22\0005\4\24\0004\5\3\0005\6\23\0>\6\1\5=\5\17\4B\1\3\0016\1\0\0'\3\25\0B\1\2\0029\1\26\0016\3\27\0009\3\28\0039\3\29\0039\3\30\3B\3\1\0A\1\0\0026\2\0\0'\4\31\0B\2\2\0029\2 \0029\2\2\0025\4!\0=\1\"\4B\2\2\1K\0\1\0\17capabilities\1\0\0\fpyright\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_keymap\bapi\bvimA\2\0\4\1\3\0\a6\0\0\0009\0\1\0009\0\2\0-\2\0\0G\3\0\0A\0\1\1K\0\1\0\1À\24nvim_buf_set_option\bapi\bvim„\4\1\2\v\0\18\0/3\2\0\0003\3\1\0005\4\2\0\18\5\2\0'\a\3\0'\b\4\0'\t\5\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\6\0'\t\a\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\b\0'\t\t\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\n\0'\t\v\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\f\0'\t\r\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\14\0'\t\15\0\18\n\4\0B\5\5\1\18\5\2\0'\a\3\0'\b\16\0'\t\17\0\18\n\4\0B\5\5\0012\0\0€K\0\1\0\":lua vim.lsp.buf.rename()<CR>\15<leader>rn&:lua vim.lsp.buf.formatting()<CR>\14<leader>f.:lua vim.lsp.diagnostic.set_loclist()<CR>\14<leader>l,:lua vim.lsp.diagnostic.goto_next()<CR>\ag],:lua vim.lsp.diagnostic.goto_prev()<CR>\ag[&:lua vim.lsp.buf.references()<CR>\agr&:lua vim.lsp.buf.definition()<CR>\agd\6n\1\0\2\fnoremap\2\vsilent\1\0\0®\1\1\0\f\0\n\0\0196\0\0\0'\2\1\0B\0\2\0023\1\2\0005\2\3\0006\3\4\0\18\5\2\0B\3\2\4X\6\a€8\b\a\0009\b\5\b5\n\6\0=\1\a\n5\v\b\0=\v\t\nB\b\2\1E\6\3\3R\6÷K\0\1\0\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\1\0\0\nsetup\vipairs\1\2\0\0\fpyright\0\14lspconfig\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nå\4\0\0\a\0\31\00096\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0005\2\a\0=\2\b\1=\1\5\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0004\1\4\0005\2\f\0\18\3\0\0'\5\r\0B\3\2\2=\3\14\2>\2\1\0015\2\15\0\18\3\0\0'\5\16\0B\3\2\2=\3\14\2>\2\2\0015\2\17\0\18\3\0\0'\5\18\0B\3\2\2=\3\14\2>\2\3\0016\2\t\0'\4\19\0B\2\2\0029\2\20\0025\4\22\0005\5\21\0=\5\23\0045\5\24\0=\5\25\0045\5\28\0005\6\26\0=\1\27\6=\6\29\5=\5\30\4B\2\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\1\0\0\ffilters\1\0\1\rdotfiles\3\1\24update_focused_file\1\0\0\1\0\1\venable\3\1\nsetup\14nvim-tree\nsplit\1\0\1\bkey\6i\vvsplit\1\0\1\bkey\6s\acb\tedit\1\0\1\bkey\6l\23nvim_tree_callback\21nvim-tree.config\frequire\bgit\1\0\5\runstaged\bâœš\frenamed\bâ‰«\14untracked\bâ˜…\runmerged\bâ‰ \vstaged\bâœš\1\0\1\fsymlink\bï’\20nvim_tree_icons\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\29nvim_tree_indent_markers\6g\bvim\0" },
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nš\2\0\0\6\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\t\0005\4\6\0005\5\a\0=\5\b\4=\4\n\3=\3\v\2B\0\2\1K\0\1\0\16textobjects\vselect\1\0\0\fkeymaps\1\0\4\aif\20@function.inner\aac\17@class.outer\aic\17@class.inner\aaf\20@function.outer\1\0\2\venable\2\14lookahead\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["roshnivim-cs"] = {
    config = { "vim.cmd('colorscheme rvcs')" },
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/roshnivim-cs",
    url = "https://github.com/shaeinst/roshnivim-cs"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "nvim-treesitter" },
    commands = { "Telescope" },
    config = { "\27LJ\2\në\2\0\0\5\0\16\0\0306\0\0\0009\0\1\0009\0\2\0\14\0\0\0X\0\b€6\0\3\0009\0\4\0'\2\5\0B\0\2\0016\0\3\0009\0\4\0'\2\6\0B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0\t\0005\2\r\0005\3\v\0005\4\n\0=\4\f\3=\3\14\2B\0\2\0016\0\a\0'\2\b\0B\0\2\0029\0\15\0'\2\f\0B\0\2\1K\0\1\0\19load_extension\15extensions\1\0\0\bfzf\1\0\0\1\0\4\14case_mode\15smart_case\nfuzzy\2\28override_generic_sorter\2\25override_file_sorter\2\nsetup\14telescope\frequire&packadd telescope-fzf-native.nvim\25packadd plenary.nvim\bcmd\bvim\vloaded\17plenary.nvim\19packer_plugins\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/scott/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/scott/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\15extensions\1\0\0\1\2\0\0\rquickfix\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvim³\4\1\0\t\0#\0@6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\a\b\0009\a\t\aB\a\1\0025\b\n\0B\5\3\2=\5\f\0049\5\b\0009\5\r\0055\a\14\0B\5\2\2=\5\15\4=\4\b\0039\4\16\0009\4\17\0044\6\3\0005\a\18\0>\a\1\0065\a\19\0>\a\2\0064\a\3\0005\b\20\0>\b\1\aB\4\3\2=\4\17\3B\1\2\0019\1\2\0009\1\21\1'\3\22\0005\4\24\0004\5\3\0005\6\23\0>\6\1\5=\5\17\4B\1\3\0016\1\0\0'\3\25\0B\1\2\0029\1\26\0016\3\27\0009\3\28\0039\3\29\0039\3\30\3B\3\1\0A\1\0\0026\2\0\0'\4\31\0B\2\2\0029\2 \0029\2\2\0025\4!\0=\1\"\4B\2\2\1K\0\1\0\17capabilities\1\0\0\fpyright\14lspconfig\29make_client_capabilities\rprotocol\blsp\bvim\24update_capabilities\17cmp_nvim_lsp\1\0\0\1\0\1\tname\vbuffer\6/\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\14<C-Space>\1\0\0\1\3\0\0\6i\6c\rcomplete\fmapping\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: roshnivim-cs
time([[Config for roshnivim-cs]], true)
vim.cmd('colorscheme rvcs')
time([[Config for roshnivim-cs]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nå\4\0\0\a\0\31\00096\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\0\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0005\1\6\0005\2\a\0=\2\b\1=\1\5\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0004\1\4\0005\2\f\0\18\3\0\0'\5\r\0B\3\2\2=\3\14\2>\2\1\0015\2\15\0\18\3\0\0'\5\16\0B\3\2\2=\3\14\2>\2\2\0015\2\17\0\18\3\0\0'\5\18\0B\3\2\2=\3\14\2>\2\3\0016\2\t\0'\4\19\0B\2\2\0029\2\20\0025\4\22\0005\5\21\0=\5\23\0045\5\24\0=\5\25\0045\5\28\0005\6\26\0=\1\27\6=\6\29\5=\5\30\4B\2\2\1K\0\1\0\tview\rmappings\1\0\0\tlist\1\0\0\ffilters\1\0\1\rdotfiles\3\1\24update_focused_file\1\0\0\1\0\1\venable\3\1\nsetup\14nvim-tree\nsplit\1\0\1\bkey\6i\vvsplit\1\0\1\bkey\6s\acb\tedit\1\0\1\bkey\6l\23nvim_tree_callback\21nvim-tree.config\frequire\bgit\1\0\5\runstaged\bâœš\frenamed\bâ‰«\14untracked\bâ˜…\runmerged\bâ‰ \vstaged\bâœš\1\0\1\fsymlink\bï’\20nvim_tree_icons\27nvim_tree_quit_on_open%nvim_tree_highlight_opened_files\29nvim_tree_indent_markers\6g\bvim\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
try_loadstring("\27LJ\2\nó\1\0\0\6\0\b\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0004\4\3\0005\5\4\0>\5\1\4=\4\5\3=\3\a\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\rfiletype\rNvimTree\ttext\18File Explorer\15text_align\tleft\1\0\4\16diagnostics\rnvim_lsp\27always_show_bufferline\2\22buffer_close_icon\5\20show_close_icon\1\nsetup\15bufferline\frequire\0", "config", "nvim-bufferline.lua")
time([[Config for nvim-bufferline.lua]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'nvim-lspconfig'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
