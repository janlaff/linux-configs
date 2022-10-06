local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- Shortcuts
map('n', '<Leader>bn', ':bn<CR>', {})
map('n', '<Leader>bp', ':bp<CR>', {})

-- LSP Keybindings
--map('n','<Leader>gD',[[:lua vim.lsp.buf.declaration()<cr>]],{})
--map('n','<Leader>gd',[[:lua vim.lsp.buf.definition()<cr>]],{})
--map('n','<Leader>K',[[:lua vim.lsp.buf.hover()<cr>]],{})
--map('n','<Leader>gr',[[:lua vim.lsp.buf.references()<cr>]],{})
--map('n','<Leader>gs',[[:lua vim.lsp.buf.signature_help()<cr>]],{})
--map('n','<Leader>gi',[[:lua vim.lsp.buf.implementation()<cr>]],{})
--map('n','<Leader>gt',[[:lua vim.lsp.buf.type_definition()<cr>]],{})
--map('n','<Leader>gw',[[:lua vim.lsp.buf.document_symbol()<cr>]],{})
--map('n','<Leader>gW',[[:lua vim.lsp.buf.workspace_symbol()<cr>]],{})
--map('n','<Leader>af',[[:lua vim.lsp.buf.code_action()<cr>]],{})
--map('n','<Leader>ee',[[:lua vim.lsp.diagnostic.show_line_diagnostics()<cr>]],{})
--map('n','<Leader>ar',[[:lua vim.lsp.buf.rename()<cr>]],{})
--map('n','<Leader>=',[[:lua vim.lsp.buf.formatting()<cr>]],{})
--map('n','<Leader>ic',[[:lua vim.lsp.buf.incoming_calls()<cr>]],{})
--map('n','<Leader>oc',[[:lua vim.lsp.buf.outgoing_calls()<cr>]],{})
map('n','<Leader>a',[[:lua vim.lsp.buf.code_action()<cr>]],{})
map('n','<Leader>r',[[:lua vim.lsp.buf.rename()<cr>]],{})
map('n','<Leader>D',[[:lua vim.lsp.buf.declaration()<cr>]],{})
map('n','<Leader>d',[[:lua vim.lsp.buf.definition()<cr>]],{})
map('n','<Leader>=',[[:lua vim.lsp.buf.format()<cr>]],{})

-- Hop Keybindings
--map('n','<Leader>w',[[:lua require('hop').hint_words()<cr>]],{})
--map('n','<Leader>c',[[:lua require('hop').hint_char1()<cr>]],{})
--map('n','<Leader>l',[[:lua require('hop').hint_lines_skip_whitespace()<cr>]],{})
map('n',"<Leader>f",[[:lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>]],{})
map('n',"<Leader>F",[[:lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>]],{})
map('n',"<Leader>t",[[:lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })<cr>]],{})
map('n',"<Leader>T",[[:lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })<cr>]],{})
map('n',"<Leader>w",[[:lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = false })<cr>]],{})
map('n',"<Leader>W",[[:lua require'hop'.hint_words({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = false })<cr>]],{})
