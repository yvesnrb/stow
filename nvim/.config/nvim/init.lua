require("plugins")
require("keybinds")
require("intellisense")
require("telescope_config")
require("vimtest_config")
require("floaterm_config")
require("defx_config")
require("lualine_config")
require("autopairs_config")
require("treesitter_config")
require("completion_config")
require("format_config")
require("vimwiki_config")

-- ui configuration
vim.g.fillchars = "vim.g.fillchars" .. "vert:\\|"
vim.o.signcolumn = "yes"
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.listchars = "eol:$,tab:>-,space:_,lead:_,trail:_,extends:>,precedes:<,nbsp:&"
vim.o.hidden = true
vim.cmd([[set nowrap]])
vim.cmd([[set clipboard=unnamed,unnamedplus]])

-- indentation configuration
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- colors configuration
vim.cmd([[ autocmd ColorScheme * :lua require('vim.lsp.diagnostic')._define_default_signs_and_highlights() ]]) 
vim.g.termguicolors = true
vim.g.background = "light"
vim.g.t_8f = "ESC[38;2;%lu;%lu;%lum"
vim.g.t_8b = "ESC[48;2;%lu;%lu;%lum"
vim.cmd([[ hi VertSplit cterm=NONE ]])
-- cool themes: nightfox sunbather gruvbox
vim.cmd([[ colorscheme gruvbox ]])
vim.cmd([[ hi Normal guibg=NONE ctermbg=NONE ]])

-- terminal configuration
vim.cmd([[ autocmd TermOpen * setlocal nonumber norelativenumber ]])
vim.cmd([[ autocmd BufEnter term://* setlocal nonumber norelativenumber ]])
vim.cmd([[ autocmd TermOpen * set bufhidden=hide ]])
