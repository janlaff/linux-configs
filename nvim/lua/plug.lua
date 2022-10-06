return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'
    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    -- TreeSitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    -- Theme
    use 'arcticicestudio/nord-vim'
    -- Hop
    use {
        'phaazon/hop.nvim',
        branch = 'v2', 
    }
end)
