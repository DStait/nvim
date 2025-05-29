-- Better experience when using space as leader
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
