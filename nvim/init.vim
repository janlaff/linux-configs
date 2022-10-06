"Simple options
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set guicursor=
set nowrap
set scrolloff=8

lua require('ensure_packer')
lua require('plugins')
lua require('lualine').setup()
