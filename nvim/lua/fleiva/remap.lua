vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- keymaps in normal mode
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "z", "y")
vim.keymap.set("n", "Z", "Y")
vim.keymap.set("n", "<leader>z", "\"+z")
vim.keymap.set("n", "<leader>Z", "\"+Z")

-- keymaps in insert mode
vim.keymap.set("i", "jj", "<Esc>")

-- keymaps in visual mode
vim.keymap.set("v", "oo", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "z", "y")
vim.keymap.set("v", "<leader>z", "\"+z")

-- special keymaps
vim.keymap.set("x", "<leader>p", "\"_dP")
