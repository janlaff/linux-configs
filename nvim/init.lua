require('opts')
require('plug')
require('keys')

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

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup {
    capabilities = capabilities,
    settings = {
        ["rust-analyzer"] = {
            workspace = {
                symbol = {
                    search = {
                        kind = "all_symbols"
                    }
                }
            }
        },
    }
}

nvim_lsp.clangd.setup {
    capabilities = capabilities,
}

-- Luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, {'i','s'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, {'i','s'}),
    }),
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
}
