local opt = vim.opt

-- Font (for GUI clients)
opt.guifont = "JetBrainsMono Nerd Font:h11"

-- Line numbers
opt.number = true

-- Tabs and indentation
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

-- Line wrapping
opt.wrap = false

-- Search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Cursor line
opt.cursorline = false

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.cmdheight = 2
opt.showtabline = 2
opt.conceallevel = 0

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append("unnamedplus")

-- Split windows
opt.splitright = true
opt.splitbelow = true

-- Scroll offset
opt.scrolloff = 4
opt.sidescrolloff = 4

-- Mouse
opt.mouse = "a"

-- File handling
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Completion
opt.completeopt = "menuone,noselect"

-- Timeout
opt.timeoutlen = 1000

-- Disable auto-comment on new line
vim.cmd([[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]])

-- File-specific indentation (2 spaces for web languages and Lua)
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "lua" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})
