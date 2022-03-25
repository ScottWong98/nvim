local fn, uv, api = vim.fn, vim.loop, vim.api
local vim_path = require('core.global').vim_path
local data_dir = require('core.global').data_dir
local modules_dir = vim_path .. "/lua/modules"
local packer_compiled = vim_path .. "/plugin/packer_compiled.lua"
local packer = nil

local Packer = {}
Packer.__index = Packer

function Packer:load_plugins()
  self.repos = {}

  local get_plugins_list = function()
    local list = {}
    local tmp = vim.split(fn.globpath(modules_dir, '*/plugins.lua'), '\n')
    for _, f in ipairs(tmp) do
      list[#list+1] = f:sub(#modules_dir-6, -1)
    end
    return list
  end

  local plugins_file = get_plugins_list()
  for _, m in ipairs(plugins_file) do
    local repos = require(m:sub(0, #m-4))
    for repo, conf in pairs(repos) do
      self.repos[#self.repos+1] = vim.tbl_extend('force', {repo}, conf)
    end
  end
end

function Packer:load_packer()
  if not packer then
    api.nvim_command('packadd packer.nvim')
    packer = require('packer')
  end
  packer.init({
    git = { clone_timeout = 120, depth = 1},
    disable_commands = true,
    display = {
      open_fn = function()
        return require('packer.util').float({border = 'single'})
      end
    },
  })
  packer.reset()

  local use = packer.use
  self:load_plugins()

  use{"wbthomason/packer.nvim", opt = true}
  for _, repo in ipairs(self.repos) do
    use(repo)
  end
end

function Packer:init_ensure_plugins()
  local packer_dir = data_dir .. 'pack/packer/opt/packer.nvim'
  local state = uv.fs_stat(packer_dir)
  if not state then
    local cmd = "!git clone --depth=1 https://github.com/wbthomason/packer.nvim " .. packer_dir
    api.nvim_command(cmd)
    uv.fs_mkdir(data_dir .. 'lua', 511, function()
            assert("make compile path dir faield")
    end)
    self:load_packer()
    packer.install()
  end
end

local plugins = setmetatable({}, {
  __index = function(_, key)
    if not packer then
      Packer:load_packer()
    end
    return packer[key]
  end
})

function plugins.ensure_plugins()
  Packer:init_ensure_plugins()
end

function plugins.auto_compile()
  plugins.clean()
  plugins.compile()
end

function plugins.load_compile()
  vim.cmd [[command! PackerInstall lua require('core.pack').install()]]
  vim.cmd [[command! PackerUpdate lua require('core.pack').update()]]
  vim.cmd [[command! PackerSync lua require('core.pack').sync()]]
  vim.cmd [[command! PackerClean lua require('core.pack').clean()]]
  vim.cmd [[command! PackerCompile lua require('core.pack').compile()]]
  vim.cmd [[command! PackerStatus lua require('core.pack').status()]]
  vim.cmd [[command! PackerAutoCompile lua require('core.pack').auto_compile()]]

  vim.cmd [[autocmd User PackerComplete lua require('core.pack').compile()]]
end

return plugins
