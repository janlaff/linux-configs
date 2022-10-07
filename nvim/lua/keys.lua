vim.g.mapleader = " "

-- Hop 
local hop = require('hop')
local hint = require('hop.hint')
--vim.keymap.set('n', 'f', function() hop.hint_char1({ direction = hint.HintDirection.AFTER_CURSOR, current_line_only = true }) end, {})
--vim.keymap.set('n', 'F', function() hop.hint_char1({ direction = hint.HintDirection.BEFORE_CURSOR, current_line_only = true }) end, {})
vim.keymap.set('n', '<Leader>h', function() hop.hint_words({ direction = hint.HintDirection.AFTER_CURSOR }) end, {})
vim.keymap.set('n', '<Leader>H', function() hop.hint_words({ direction = hint.HintDirection.BEFORE_CURSOR }) end, {})

-- Telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<Leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<Leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<Leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<Leader>fh', telescope.help_tags, {})

-- LSP
local lsp = vim.lsp.buf
vim.keymap.set('n', '<Leader>K', lsp.hover, {})
vim.keymap.set('n', '<Leader>a', lsp.code_action, {})
vim.keymap.set('n', '<Leader>r', lsp.rename, {})
vim.keymap.set('n', '<Leader>D', lsp.declaration, {})
vim.keymap.set('n', '<Leader>d', lsp.definition, {})
vim.keymap.set('n', '<Leader>=', lsp.format, {})
