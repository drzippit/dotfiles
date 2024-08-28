local keymap = vim.keymap

-- When deleting, don't copy
keymap.set("n", "x", '"_x')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tabs
-- keymap.set("n", "<tab>", ":tabnext<cr>", opts )
-- keymap.set("n", "<s-tab>", ":tabprev<cr>", opts )

-- Use JK to escape
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })
