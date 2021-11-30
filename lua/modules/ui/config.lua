local config = {}

function config.galaxyline()
  require('modules.ui.eviline')
end

function config.lualine()
  require('lualine').setup {
    extensions = {'quickfix'},
  }
end

function config.nvim_bufferline()
  require('bufferline').setup{
    options = {
      diagnostics = "nvim_lsp",
      buffer_close_icon = '',
      show_close_icon = false,
      always_show_bufferline = true,
      offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
    }
  }
end


function config.indent_blankline()

  vim.g.indent_blankline_char = "│"
  vim.g.indent_blankline_show_first_indent_level = true
  vim.g.indent_blankline_filetype_exclude = {
    "startify",
    "dashboard",
    "dotooagenda",
    "log",
    "fugitive",
    "gitcommit",
    "packer",
    "vimwiki",
    "markdown",
    "json",
    "txt",
    "vista",
    "help",
    "todoist",
    "NvimTree",
    "peekaboo",
    "git",
    "TelescopePrompt",
    "undotree",
    "flutterToolsOutline",
    "" -- for all buffers without a file type
  }
  vim.g.indent_blankline_buftype_exclude = {"terminal", "nofile"}
  vim.g.indent_blankline_show_trailing_blankline_indent = false
  vim.g.indent_blankline_show_current_context = true
  vim.g.indent_blankline_context_patterns = {
    "class",
    "function",
    "method",
    "block",
    "list_literal",
    "selector",
    "^if",
    "^table",
    "if_statement",
    "while",
    "for"
  }
  -- because lazy load indent-blankline so need readd this autocmd
  vim.cmd('autocmd CursorMoved * IndentBlanklineRefresh')
end

function config.nvim_tree()
  vim.g.nvim_tree_indent_markers = 1
  vim.g.nvim_tree_highlight_opened_files = 0
  vim.g.nvim_tree_quit_on_open = 1
  vim.g.nvim_tree_icons = {
    -- default =  '',
    symlink =  '',
    git = {
     unstaged = "✚",
     staged =  "✚",
     unmerged =  "≠",
     renamed =  "≫",
     untracked = "★",
    },
  }
  local tree_cb = require'nvim-tree.config'.nvim_tree_callback
  local keymap_list = {
    { key = "l",     cb = tree_cb('edit') },
    { key = "s",     cb = tree_cb('vsplit') },
    { key = "i",     cb = tree_cb('split') },
  }
  -- On Ready Event for Lazy Loading work
  -- require("nvim-tree.events").on_nvim_tree_ready(
  --   function()
  --     vim.cmd("NvimTreeRefresh")
  --   end
  -- )
  require('nvim-tree').setup {
    update_focused_file = { enable = 1 },
    filters = { dotfiles = 1 },
    view = {
      mappings = { list = keymap_list },
    },
  }
end

return config
