--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- mode: the mode you want the key bind to apply to (e.g., insert mode, normal mode, command mode, visual mode).
-- sequence: the sequence of keys to press.
-- command: the command you want the keypresses to execute.
-- options: an optional Lua table of options to configure (e.g., silent or noremap).

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Navigate vim panes better
map('n', '<C-k>', ':wincmd k<CR>', {})
map('n', '<C-j>', ':wincmd j<CR>', {})
map('n', '<C-h>', ':wincmd h<CR>', {})
map('n', '<C-l>', ':wincmd l<CR>', {})

map('n', '<leader>h', ':nohlsearch<CR>', {})

-- nvim-tree
map('n', '<C-o>', ':NvimTreeFindFile<CR>', {})
map('n', '<C-c>', ':NvimTreeClose<CR>', {})

-- indent
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 't', [[:TagbarToggle]], {})


