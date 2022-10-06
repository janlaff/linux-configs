local options = vim.opt
local command = vim.api.nvim_command

-- Theme
options.syntax = "ON"
options.termguicolors = true
--command("colorscheme gruvbox")

-- Search
options.hlsearch = false
options.incsearch = true

-- Whitespace
options.tabstop = 4
options.softtabstop = 4
options.shiftwidth = 4
options.expandtab = true
options.smartindent = true

-- Other
options.number = true
options.relativenumber = true
options.guicursor = ""
options.scrolloff = 8
--options.signcolumn = yes
