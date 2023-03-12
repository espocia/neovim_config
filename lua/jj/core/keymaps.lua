vim.g.mapleader  = " "
local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>pv", ":Ex<CR>") -- netrw 
keymap.set("i", "jk", "<ESC>" ) -- exit insert mode
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove search hightlights
keymap.set("n", "x", '"_x') -- remove single character "wont be saved in register"

keymap.set("n", "<leader>+", "<C-a>") -- increment numbers
keymap.set("n", "<leader>-", "<C-x>") -- deceremnt number

keymap.set("n", "<leader>sv", "<C-w>v") -- virtical split
keymap.set("n", "<leader>sh", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>se", "<C-w>=") -- equal split
keymap.set("n", "<leader>sx", ":close<CR>") -- close window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab 
keymap.set("n", "<leader>tx", ":close<CR>") -- close tab 
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next mab 
keymap.set("n", "<leader>tp", ":tapb<CR>") -- previous tab 

keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- previous tab 

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- previous tab 
