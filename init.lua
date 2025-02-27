-- Line Settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Setting Tab
vim.opt.tabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true  

-- Disable Backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Disable Built-In Explorer
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Activate Mouse
vim.opt.mouse = 'a'

-- For Copy-Pase
vim.opt.clipboard = "unnamedplus" 

-- Mapping 
vim.keymap.set('i', '(', '()<left>')
vim.keymap.set('i', '{', '{}<left>')
vim.keymap.set('i', '[', '[]<left>')
vim.keymap.set('i', '\'', '\'\'<left>')
vim.keymap.set('i', '\"', '\"\"<left>')
vim.keymap.set('i', '<h1>', '<h1></h1>')
vim.keymap.set('i', '<h2>', '<h2></h2>')
vim.keymap.set('i', '<h3>', '<h3></h3>')
vim.keymap.set('i', '<h4>', '<h4></h4>')
vim.keymap.set('i', '<h5>', '<h5></h5>')
vim.keymap.set('i', '<header>', '<header></header>')
vim.keymap.set('i', '<main>', '<main></main>')
vim.keymap.set('i', '<footer>', '<footer></footer>')
vim.keymap.set('i', '<div>', '<div></div>')
vim.keymap.set('i', '<script>', '<script></div>')
vim.keymap.set('i', '<img>', '<img src="">')
vim.keymap.set('i', '<link>', '<link rel="stylesheet" href="">')

-- Set Mapleader
vim.g.mapleader = ' ' 

-- Moving Between Windows
vim.keymap.set('n', '<leader>w', '<C-w>w', { noremap = true, silent = true })

-- Plugins 
require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'
   use 'projekt0n/github-nvim-theme'
   use 'nvim-tree/nvim-web-devicons'
   use 'nvim-tree/nvim-tree.lua'
   use {'neoclide/coc.nvim', branch = 'release'}
   use 'github/copilot.vim'
   use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
   use 'nvim-lualine/lualine.nvim'
end)

-- Github Theme
vim.cmd('colorscheme github_dark_default')

-- Nvim Tree
require('nvim-tree').setup()
vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Nvim TreeSitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "c", "cpp", "javascript", "typescript", "html", "css", "json" },
  auto_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Lua Line 
require('lualine').setup({
  options = {
   theme = 'onelight',
   --theme = '16color',
  },
})


