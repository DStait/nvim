-- Better experience when using space as leader
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })


vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.api.nvim_create_user_command('WQ', 'wq', {})
vim.api.nvim_create_user_command('Wq', 'wq', {})
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Qa', 'qa', {})
vim.api.nvim_create_user_command('Q', 'q', {})

vim.keymap.set('n', '<CR>j', 'm`o<Esc>``')
vim.keymap.set('n', '<CR>k', 'm`O<Esc>``')

vim.api.nvim_set_keymap('n', 'q', 'q', { noremap = true, silent = false })
