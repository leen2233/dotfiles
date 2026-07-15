vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({"n", "v"}, "<Space>", "<Nop>", { silent = true })
vim.keymap.set({"n", "i"}, "<C-s>", ":w<cr>", { silent = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Vertical and Horizontal splits
vim.keymap.set("n", "vv", "<C-w>v")
vim.keymap.set("n", "ss", "<C-w>s")
vim.keymap.set({"n", "i"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "i"}, "<C-j>", "<C-w>j")
vim.keymap.set({"n", "i"}, "<C-h>", "<C-w>h")
vim.keymap.set({"n", "i"}, "<C-l>", "<C-w>l")

vim.keymap.set("v", "<Tab>", ">gv")
vim.keymap.set("v", "<S-Tab>", "<gv")

vim.keymap.set("n", "<Leader>h", ":noh<cr>", { silent = true })
vim.keymap.set("n", "<Leader>k", ":BufferNext<CR>", { silent = true })
vim.keymap.set("n", "<Leader>j", ":BufferPrevious<CR>", { silent = true })
vim.keymap.set("n", "<Leader>q", ":BufferClose<CR>", { silent = true })

vim.api.nvim_create_user_command("W", "w", {})

-- Fix paste when visual selected
vim.keymap.set("v", "p", '"_dP')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
