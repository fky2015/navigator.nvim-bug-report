require("packer").startup(
{
  function()
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use {'ray-x/navigator.lua', 
      requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'}
    }
  end,
  config = { git = { default_url_format = 'https://hub.fastgit.org/%s' }}
  }
)

require("navigator").setup(
)
