--[[ vars.lua ]]

-- g is global options
local g = vim.g
-- w is window options
local w = vim.wo

g.mapleader = ' '
g.maplocalleader = ' '
g.term = xterm
g.t_co = 256
g.background = "dark"
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

