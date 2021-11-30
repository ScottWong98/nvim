local config = {}

function config.nvim_lsp()
  local nvim_lsp = require('lspconfig')

  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    local opts = { noremap=true, silent=false }
    buf_set_keymap('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', opts)
  end
  local servers = { 'pyright' }
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
      flags = {
        debounce_text_changes = 150,
      }
    }
  end
  nvim_lsp.pyright.setup {
  }
end

function config.telescope()
  if not packer_plugins['plenary.nvim'].loaded then
    vim.cmd [[packadd plenary.nvim]]
    vim.cmd [[packadd telescope-fzf-native.nvim]]
  end
  require('telescope').setup{
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = 'smart_case',
      }
    }
  }
  require('telescope').load_extension('fzf')
end

function config.nvim_cmp()
  local cmp = require('cmp')
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end
    },
    mapping = {
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
    }, {
      { name = 'buffer' },
    })
  })
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  require('lspconfig')['pyright'].setup {
    capabilities = capabilities
  }

end
return config
