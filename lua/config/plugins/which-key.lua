return {
	'folke/which-key.nvim',
	opts = {
		spec = {
			{ '<leader>c',  group = '[C]ode' },
			{ '<leader>l',  group = '[L]SP' },
			{ '<leader>ld', group = '[D]efinitions' },
			{ '<leader>lt', group = '[T]ypes' },
			{ '<leader>s',  group = '[S]earch' },
			{ '<leader>g',  group = '[G]it' },
			{ '<leader>gs', group = '[s]earch' },
			{ '<leader>gt', group = '[t]oggle' },
			{ '<leader>gh', group = '[h]unk' },
			{ '<leader>x',  group = 'Trouble (Diagnostics)' },
			{ '<leader>t',  group = '[T]oggle' },
			{ '<leader>n',  group = '[N]ofitications' },
			{ '<leader>v',  group = '[V]env' },
			{ '<leader>h',  group = 'Git [H]unk',           mode = { 'n', 'v' } },
		},
	},
}
