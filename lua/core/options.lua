local global = require('core.global')

local function bind_option(options)
  for k, v in pairs(options) do
    if v == true or v == false then
      vim.cmd('set ' .. k)
    else
      vim.cmd('set ' .. k .. '=' .. v)
    end
  end
end

local function load_options()
  local global_local = {
    termguicolors    = true;
    mouse            = "nv";
    errorbells       = true;
    visualbell       = true;
    hidden           = true;
    fileformats      = "unix,mac,dos";
    magic            = true;
    virtualedit      = "block";
    encoding         = "utf-8";
    clipboard        = "unnamedplus";
    backup           = false;
    writebackup      = false;
    swapfile         = false;
    directory        = global.cache_dir .. "swap/";
    undodir          = global.cache_dir .. "undo/";
    backupdir        = global.cache_dir .. "backup/";
    viewdir          = global.cache_dir .. "view/";
    spellfile        = global.cache_dir .. "spell/en.uft-8.add";
    shada            = "!,'300,<50,@100,s10,h";
    smarttab         = true;
    shiftround       = true;
    updatetime       = 100;
    redrawtime       = 1500;
    ignorecase       = true;
    smartcase        = true;
    infercase        = true;
    incsearch        = true;
    complete         = ".,w,b,k";
    grepformat       = "%f:%l:%c:%m";
    grepprg          = 'rg --hidden --vimgrep --smart-case --';
    whichwrap        = "h,l,<,>,[,],~";
    splitbelow       = true;
    splitright       = true;
    switchbuf        = "useopen";
    diffopt          = "filler,iwhite,internal,algorithm:patience";
    jumpoptions      = "stack";
    showmode         = false;
    shortmess        = "aoOTIcF";
    scrolloff        = 2;
    sidescrolloff    = 5;
    ruler            = false;
    list             = true;
    showtabline      = 2;
    pumheight        = 15;
    helpheight       = 12;
    previewheight    = 12;
    showcmd          = false;
    equalalways      = false;
    display          = "lastline";
    showbreak        = "↳  ";
    listchars        = "tab:»·,nbsp:+,trail:·,extends:→,precedes:←";
    pumblend         = 10;
    winblend         = 10;
  }

  local bw_local = {
    undofile         = true;
    synmaxcol        = 1500;
    formatoptions    = "1jcroql";
    textwidth        = 80;
    expandtab        = true;
    autoindent       = true;
    tabstop          = 2;
    shiftwidth       = 2;
    softtabstop      = -1;
    breakindentopt   = "shift:2,min:20";
    wrap             = false;
    linebreak        = true;
    number           = true;
    colorcolumn      = "80";
    foldenable       = true;
    signcolumn       = "yes";
    conceallevel     = 2;
    concealcursor    = "niv";
  }

  for name, value in pairs(global_local) do
    vim.o[name] = value
  end
  bind_option(bw_local)
end

load_options()
