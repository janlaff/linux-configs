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

require('ensure_packer')
require('plugins')
require('lualine').setup()
require('neoscroll').setup()

local wilder = require('wilder')
wilder.setup({modes = {':', '/', '?'}})

wilder.set_option('renderer', wilder.popupmenu_renderer({
  highlighter = wilder.basic_highlighter(),
}))
