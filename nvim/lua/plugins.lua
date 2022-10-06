return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'karb94/neoscroll.nvim'
    use 'gelguy/wilder.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
end)
