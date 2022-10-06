vim.opt.tabstop = 4
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.guicursor = ""
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.hlsearch = false
vim.opt.signcolumn = "yes"
vim.opt.completeopt = "menu,menuone,noselect"

require('ensure_packer')
require('plugins')
require('lualine').setup()
require('neoscroll').setup()


-- Leader key setup
vim.g.mapleader = " "

local lsp_keybindings = function()
    print("Attaching LSP keybindings")
    vim.api.nvim_set_keymap('n','<Leader>gD',[[:lua vim.lsp.buf.declaration()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gd',[[:lua vim.lsp.buf.definition()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>K',[[:lua vim.lsp.buf.hover()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gr',[[:lua vim.lsp.buf.references()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gs',[[:lua vim.lsp.buf.signature_help()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gi',[[:lua vim.lsp.buf.implementation()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gt',[[:lua vim.lsp.buf.type_definition()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gw',[[:lua vim.lsp.buf.document_symbol()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>gW',[[:lua vim.lsp.buf.workspace_symbol()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>af',[[:lua vim.lsp.buf.code_action()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>ee',[[:lua vim.lsp.util.show_line_diagnostics()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>ar',[[:lua vim.lsp.buf.rename()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>=',[[:lua vim.lsp.buf.formatting()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>ic',[[:lua vim.lsp.buf.incoming_calls()<cr>]],{})
    vim.api.nvim_set_keymap('n','<Leader>oc',[[:lua vim.lsp.buf.outgoing_calls()<cr>]],{})
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup {
    on_attach = lsp_keybindings,
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

nvim_lsp.clangd.setup {}


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
