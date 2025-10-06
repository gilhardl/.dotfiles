vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- line numbers
opt.number = true                   -- show current line number
opt.relativenumber = true           -- show other lines numbers relative to current line
opt.signcolumn = "yes"              -- always show sign column (~ on line numbers left-side) so that text doesn't shift

-- indentation
opt.tabstop = 2				              -- 2 spaces for tabs
opt.shiftwidth = 2		              -- 2 spaces for indent
opt.expandtab = true	              -- expand tabs to spaces
opt.autoindent = true	              -- keep from current line indent when creating new one

-- text wrap
opt.wrap = false                    -- don't wrap lines

-- search settings
opt.ignorecase = true               -- ignore case when searching
opt.smartcase = true                -- if search terms include mixed case, make case-sensitive search

-- cursor
opt.cursorline = true               -- show horizontal cursor on current line

-- theme
opt.termguicolors = true            -- enable term colors for colorscheme
opt.background = "dark"             -- use dark colorscheme when available for colorscheme

--backspace
opt.backspace = "indent,eol,start"  -- allow backspace on indent, end of line and insert mode's start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- window split
opt.splitright = true               -- vertical split window to the right
opt.splitbelow = true               -- horizontal split window to the bottom
