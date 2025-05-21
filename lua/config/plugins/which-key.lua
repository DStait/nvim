return {
	'folke/which-key.nvim',
	opts = {
		spec = {
			{ '<leader>c', group = '[C]ode' },
			{ '<leader>s', group = '[S]earch' },
			{ '<leader>g', group = '[G]it' },
			{ '<leader>x', group = 'Trouble (Diagnostics)' },
			{ '<leader>t', group = '[T]oggle' },
			{ '<leader>h', group = 'Git [H]unk',           mode = { 'n', 'v' } },
		},
	},
}
