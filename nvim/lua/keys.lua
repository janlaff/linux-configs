local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- Shortcuts
map('n', '<Leader>bn', ':bn<CR>', {})
map('n', '<Leader>bp', ':bp<CR>', {})

-- LSP Keybindings
map('n','<Leader>gD',[[:lua vim.lsp.buf.declaration()<cr>]],{})
map('n','<Leader>gd',[[:lua vim.lsp.buf.definition()<cr>]],{})
map('n','<Leader>K',[[:lua vim.lsp.buf.hover()<cr>]],{})
map('n','<Leader>gr',[[:lua vim.lsp.buf.references()<cr>]],{})
map('n','<Leader>gs',[[:lua vim.lsp.buf.signature_help()<cr>]],{})
map('n','<Leader>gi',[[:lua vim.lsp.buf.implementation()<cr>]],{})
map('n','<Leader>gt',[[:lua vim.lsp.buf.type_definition()<cr>]],{})
map('n','<Leader>gw',[[:lua vim.lsp.buf.document_symbol()<cr>]],{})
map('n','<Leader>gW',[[:lua vim.lsp.buf.workspace_symbol()<cr>]],{})
map('n','<Leader>af',[[:lua vim.lsp.buf.code_action()<cr>]],{})
map('n','<Leader>ee',[[:lua vim.lsp.util.show_line_diagnostics()<cr>]],{})
map('n','<Leader>ar',[[:lua vim.lsp.buf.rename()<cr>]],{})
map('n','<Leader>=',[[:lua vim.lsp.buf.formatting()<cr>]],{})
map('n','<Leader>ic',[[:lua vim.lsp.buf.incoming_calls()<cr>]],{})
map('n','<Leader>oc',[[:lua vim.lsp.buf.outgoing_calls()<cr>]],{})
