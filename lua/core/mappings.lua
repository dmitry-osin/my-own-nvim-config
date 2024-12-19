-- Leader
vim.g.mapleader = " "

-- Insert
vim.keymap.set("i", "jj", "<Esc>", { desc = "Escape" })

-- Buffers
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save" })

-- Neo-tree
vim.keymap.set("n", "<leader>e", ":Neotree left toggle reveal<CR>", { desc = "Neo-tree" })

-- Navigation
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>", { desc = "Up" })
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>", { desc = "Down" })
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>", { desc = "Left" })
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>", { desc = "Right" })

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "\\", ":split<CR>", { desc = "Horizontal split" })

-- Tabs
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", { desc = "Close tab" })
vim.keymap.set("n", "<c-x>", ":BufferLineCloseOthers<CR>", { desc = "Close other tabs" })
