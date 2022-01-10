vim.cmd([[set runtimepath=$VIMRUNTIME]])
vim.cmd([[set packpath=/tmp/nvim/site]])
local package_root = '/tmp/nvim/site/pack'
local install_path = package_root .. '/packer/start/packer.nvim'

local function load_plugins()
  require('packer').startup({
    function(use)
      use({ 'wbthomason/packer.nvim' })
      use('nvim-treesitter/nvim-treesitter')
      use('neovim/nvim-lspconfig')
      use({
        'ray-x/navigator.lua',
        requires = { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
        config = function()
          require('navigator').setup()
        end,
      })
    end,
    config = {
      package_root = package_root,
      compile_path = install_path .. '/plugin/packer_compiled.lua',
      -- git = { default_url_format = 'https://hub.fastgit.org/%s' },
    },
  })
end

if vim.fn.isdirectory(install_path) == 0 then
  vim.fn.system({
    'git',
    'clone',
    -- 'https://hub.fastgit.org/wbthomason/packer.nvim',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })
  load_plugins()
  require('packer').sync()
else
  load_plugins()
end
