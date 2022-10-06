require('opts')
require('plug')
require('keys')
require('comp')

require('hop').setup()

require('lualine').setup({
    sections = {
        lualine_c = {
            'lsp_progress'
        }
    }
})

require('nvim-treesitter.configs').setup({
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
    }
})
