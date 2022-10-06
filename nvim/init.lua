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
vim.opt.completeopt = "menu,menuone,noselect"

require('ensure_packer')
require('plugins')
require('lualine').setup()
require('neoscroll').setup()

local nvim_lsp = require('lspconfig')

nvim_lsp.rust_analyzer.setup {
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

