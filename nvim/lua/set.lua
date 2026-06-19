vim.g.mapleader = " "

vim.g.netrw_banner = 0;

vim.opt.guicursor = ""

vim.opt.nu = true 
vim.opt.rnu = true

vim.opt.tabstop = 4 
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4 
vim.opt.expandtab = true 

vim.opt.smartindent = true  

vim.opt.swapfile = false 
vim.opt.backup = false 

vim.opt.ignorecase = true
vim.opt.hlsearch = true 

vim.opt.splitright = true 
vim.opt.splitbelow = true 

vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }

vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.updatetime = 200

vim.opt.autoread = true
vim.api.nvim_create_autocmd({"FocusGained", "BufEnter", "CursorHold"}, {
    callback = function()
        vim.cmd("checktime")
    end,
})
