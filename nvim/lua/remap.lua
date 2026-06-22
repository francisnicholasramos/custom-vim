vim.keymap.set("n", "<leader>w", ":w<CR>") 
vim.keymap.set("n", ";", ":") 
vim.keymap.set("n", "<leader>t", ":sp | :terminal<CR>") 
vim.keymap.set("n", "<leader>v", ":vsp<cr>") 
vim.keymap.set("n", "<leader>s", ":sp<cr>") 
vim.keymap.set("n", "<leader>d", ":bd<cr>") 
vim.keymap.set("n", "cf", ":e ~/.config/nvim/lua/<CR>") 
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") 
vim.keymap.set("n", "<Tab>", "<C-w>") 
vim.keymap.set("n", "<leader><Tab>", "<C-6>")
vim.keymap.set("v", "y", 'myy`y')
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>") 

vim.keymap.set("n", "<leader>ff", ":FzfLua files<CR>")
vim.keymap.set("n", "<leader><leader>", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<leader>rf", ":FzfLua oldfiles<CR>")
vim.keymap.set("n", "<leader>rg", ":FzfLua grep_project<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<C-k>", ":resize +1<CR>")
vim.keymap.set("n", "<C-j>", ":resize -1<CR>")
vim.keymap.set("n", "<C-h>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<C-l>", ":vertical resize +1<CR>")

vim.keymap.set("n", "<C-Up>", ":resize +1<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -1<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +1<CR>")

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv") 

vim.keymap.set("n", "K", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "H", vim.lsp.buf.hover, opts)

vim.keymap.set({"n", "v"}, "<leader>p", '"+p')
vim.keymap.set("n", "<leader>yy", '"+yy')
vim.keymap.set("v", "<leader>y", '"+y')

vim.keymap.set("n", "<M-k>", ":cnext<CR>")
vim.keymap.set("n", "<M-j>", ":cprev<CR>")
vim.keymap.set("i", "<M-BS>", "<C-w>") 

-- THE BEST REMAP IMHO
vim.keymap.set("n", "<leader>e", function()
  if vim.bo.filetype == "netrw" then
    vim.cmd("b#") -- return to previous buffer
  else 
    vim.cmd("Ex")
  end 
end)

vim.cmd([[
  set path+=**

  "color tomorrow_night_dark
  "color jellybeans
  "color kanagawa
  "color hybrid
  color groove-box
  "color nord
  "color torte

  highlight Normal guibg=none
  highlight NonText guibg=none
]])
