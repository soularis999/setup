-- Plugins are from here
-- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
-- https://mattermost.com/blog/how-to-install-and-set-up-neovim-for-code-editing/

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    -- [[ Tree files ]]
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",

    -- [[ Themes and colors ]]
    --
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    "mhinz/vim-startify",   -- "Fancy start screen"
    'DanilaMihailov/beacon.nvim', -- cursor visibility 
    "nvim-lualine/lualine.nvim", -- status line
    'Mofiqul/dracula.nvim',  -- dracula colors

    -- [[ Dev general ]]
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    },  -- find files
    'majutsushi/tagbar', -- 
    'Yggdroot/indentLine', -- line indent
    "tpope/vim-fugitive", -- git help
    'junegunn/gv.vim',    -- git help
    'windwp/nvim-autopairs',
    "tpope/vim-commentary",
    'voldikss/vim-floaterm',
    "nvim-treesitter/nvim-treesitter",
    "numToStr/Comment.nvim",
    "folke/todo-comments.nvim",
    "folke/trouble.nvim",

    -- programming
    "williamboman/mason.nvim", -- managed LSP server
    "williamboman/mason-lspconfig.nvim",
    -- now can install Mason plugins for rust analyzer and codelldb
    -- :MasonInstall rust-analyzer clojure-analyzer codelldb
    "neovim/nvim-lspconfig",
    {
        "vinnymeller/swagger-preview.nvim",
        run = "npm install -g swagger-ui-watcher",
    },

    -- Snippets
    -- Completion framework:
    'hrsh7th/nvim-cmp', 

    -- LSP completion source:
    'hrsh7th/cmp-nvim-lsp',

    -- Useful completion sources:
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp-signature-help',
    'hrsh7th/cmp-vsnip', 
    'hrsh7th/cmp-path', 
    'hrsh7th/cmp-buffer',
    'hrsh7th/vim-vsnip',
    "L3MON4D3/LuaSnip",

    -- rust
    'simrat39/rust-tools.nvim',
    'puremourning/vimspector',

--  "mattn/emmet-vim",
--  "ellisonleao/gruvbox.nvim",
--  "vim-test/vim-test",
--  "lewis6991/gitsigns.nvim",
--  "preservim/vimux",
--  "christoomey/vim-tmux-navigator",
--  "tpope/vim-surround",
--  "stevearc/oil.nvim",
--
--  -- completion
--  "github/copilot.vim",
--  {
--    "iamcco/markdown-preview.nvim",
--    run = "cd app && npm install",
--  },
}

local opts = {}

require("lazy").setup(plugins, opts)


