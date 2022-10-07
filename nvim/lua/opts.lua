local options = vim.opt
local command = vim.api.nvim_command

-- Theme
options.termguicolors = true
command("colorscheme nord")
command("highlight Normal guibg=none")

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
options.shortmess = options.shortmess + "c"
options.signcolumn = "yes"

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true,
        signs = true,
        update_in_insert = true,
    }
)
